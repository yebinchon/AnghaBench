
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DYNAMIC_MACRO_COUNT ;
 int dprintf (char*) ;
 int dynamic_macro_header_correct () ;
 int dynamic_macro_load_eeprom (scalar_t__) ;

void dynamic_macro_load_eeprom_all(void) {
  if (!dynamic_macro_header_correct()) {
    dprintf("dynamic_macro: eeprom header not valid, not restoring macros.\n");
    return;
  }

  for (uint8_t i = 0; i < DYNAMIC_MACRO_COUNT; ++i) {
    dynamic_macro_load_eeprom(i);
  }
}
