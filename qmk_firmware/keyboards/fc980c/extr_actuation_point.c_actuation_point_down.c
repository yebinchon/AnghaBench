
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int read_rdac () ;
 int write_rdac (int) ;

void actuation_point_down(void) {

    uint8_t rdac = read_rdac();
    if (rdac == 63)
        write_rdac(63);
    else
        write_rdac(rdac+1);
}
