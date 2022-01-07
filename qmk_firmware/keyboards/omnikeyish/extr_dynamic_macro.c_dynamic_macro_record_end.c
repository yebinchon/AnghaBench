
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_8__ {size_t length; int checksum; TYPE_2__* events; } ;
typedef TYPE_3__ dynamic_macro_t ;


 int dprintf (char*,size_t,...) ;
 int dprintln (char*) ;
 int dynamic_macro_calc_crc (TYPE_3__*) ;
 int dynamic_macro_led_blink () ;
 int dynamic_macro_save_eeprom (size_t) ;
 TYPE_3__* dynamic_macros ;

void dynamic_macro_record_end(uint8_t macro_id) {
  dynamic_macro_led_blink();

  dynamic_macro_t* macro = &dynamic_macros[macro_id];
  uint8_t length = macro->length;

  keyrecord_t* events_begin = &(macro->events[0]);
  keyrecord_t* events_pointer = &(macro->events[length - 1]);

  dprintf("dynamic_macro: macro length before trimming: %d\n", macro->length);
  while (events_pointer != events_begin && (events_pointer)->event.pressed) {
    dprintln("dynamic macro: trimming a trailing key-down event");
    --(macro->length);
    --events_pointer;
  }






  dprintf("dynamic macro: slot %d saved, length: %d\n", macro_id, length);
}
