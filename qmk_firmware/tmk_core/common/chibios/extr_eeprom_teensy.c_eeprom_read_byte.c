
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint32_t ;


 int * buffer ;

uint8_t eeprom_read_byte(const uint8_t *addr) {
    uint32_t offset = (uint32_t)addr;
    return buffer[offset];
}
