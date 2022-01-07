
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {scalar_t__ length; } ;


 int clear_keyboard () ;
 int dprintf (char*,size_t) ;
 int dynamic_macro_led_blink () ;
 TYPE_1__* dynamic_macros ;
 int layer_clear () ;

void dynamic_macro_record_start(uint8_t macro_id) {
  dprintf("dynamic macro recording: started for slot %d\n", macro_id);

  dynamic_macro_led_blink();

  clear_keyboard();
  layer_clear();

  dynamic_macros[macro_id].length = 0;
}
