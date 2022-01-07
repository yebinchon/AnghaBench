
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int i2c_master_init () ;
 int read_eeprom () ;
 int write_rdac (int) ;

void adjust_actuation_point(int offset) {
    i2c_master_init();
    uint8_t rdac = read_eeprom() + offset;
    if (rdac > 63) {
        if (offset > 0)
            write_rdac(63);
        else
            write_rdac(0);
    } else {
        write_rdac(rdac);
    }
}
