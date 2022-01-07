
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int dynamic_macro_t ;


 int DYNAMIC_MACRO_EEPROM_MAGIC ;
 int DYNAMIC_MACRO_EEPROM_MAGIC_ADDR ;
 int dprintf (char*,...) ;
 int dynamic_macro_eeprom_macro_addr (size_t) ;
 int dynamic_macro_header_correct () ;
 int * dynamic_macros ;
 int eeprom_update_block (int *,int ,int) ;
 int eeprom_write_word (int ,int ) ;

void dynamic_macro_save_eeprom(uint8_t macro_id) {
  if (!dynamic_macro_header_correct()) {
    eeprom_write_word(DYNAMIC_MACRO_EEPROM_MAGIC_ADDR, DYNAMIC_MACRO_EEPROM_MAGIC);
    dprintf("dynamic macro: writing magic eeprom header\n");
  }

  dynamic_macro_t* src = &dynamic_macros[macro_id];

  eeprom_update_block(src, dynamic_macro_eeprom_macro_addr(macro_id), sizeof(dynamic_macro_t));
  dprintf("dynamic macro: slot %d saved to eeprom\n", macro_id);
}
