use quanlybanhang;
create table customer(
	cID int auto_increment primary key not null,
    cName varchar(50) not null,
    cAge int not null
);

create table orders(
	oID int auto_increment primary key not null,
    cID int not null,
    oDate datetime not null,
    oTotalPrice float not null,
    foreign key (cID) references customer(cID)
);

create table product(
	pID int auto_increment primary key not null,
    pName varchar(50) not null,
    pPrice float not null
);

create table orderdetail(
	oID int not null,
    pID int not null,
    odQTY int not null,
    primary key(oID, pID),
    foreign key(oID) references orders(oID),
    foreign key(pID) references product(pID)
);
