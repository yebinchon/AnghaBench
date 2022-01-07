
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int dynamic_macro_t ;


 void* DYNAMIC_MACRO_EEPROM_BLOCK0_ADDR ;

inline void* dynamic_macro_eeprom_macro_addr(uint8_t macro_id) {
    return DYNAMIC_MACRO_EEPROM_BLOCK0_ADDR + sizeof(dynamic_macro_t) * macro_id;
}
