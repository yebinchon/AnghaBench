
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * buffer ;

uint8_t eeprom_read_byte(const uint8_t *addr) {
    uintptr_t offset = (uintptr_t)addr;
    return buffer[offset];
}
