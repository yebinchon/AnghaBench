
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {scalar_t__ checksum; scalar_t__ length; } ;
typedef TYPE_1__ dynamic_macro_t ;


 int dprintf (char*,size_t) ;
 scalar_t__ dynamic_macro_calc_crc (TYPE_1__*) ;
 int dynamic_macro_eeprom_macro_addr (size_t) ;
 TYPE_1__* dynamic_macros ;
 int eeprom_read_block (TYPE_1__*,int ,int) ;

void dynamic_macro_load_eeprom(uint8_t macro_id) {
  dynamic_macro_t* dst = &dynamic_macros[macro_id];

  eeprom_read_block(dst, dynamic_macro_eeprom_macro_addr(macro_id), sizeof(dynamic_macro_t));


  if (dynamic_macro_calc_crc(dst) != dst->checksum) {
    dprintf("dynamic macro: slot %d not loaded, checksum mismatch\n", macro_id);
    dst->length = 0;

    return;
  }

  dprintf("dynamic macro: slot %d loaded from eeprom, checksum okay\n", macro_id);
}
