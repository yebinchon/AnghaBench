
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * buffer ;

void eeprom_write_byte(uint8_t *addr, uint8_t value) {
    uintptr_t offset = (uintptr_t)addr;
    buffer[offset] = value;
}
