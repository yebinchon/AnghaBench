
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ read_rdac () ;
 int write_rdac (scalar_t__) ;

void actuation_point_up(void) {

    uint8_t rdac = read_rdac();
    if (rdac == 0)
        write_rdac(0);
    else
        write_rdac(rdac-1);
}
