
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int storage_number ;
typedef double calculated_number ;


 int SN_EXISTS ;
 int pack_storage_number (double,int ) ;
 double unpack_storage_number (int ) ;

calculated_number storage_number_min(calculated_number n) {
    calculated_number r = 1, last;

    do {
        last = n;
        n /= 2.0;
        storage_number t = pack_storage_number(n, SN_EXISTS);
        r = unpack_storage_number(t);
    } while(r != 0.0 && r != last);

    return last;
}
