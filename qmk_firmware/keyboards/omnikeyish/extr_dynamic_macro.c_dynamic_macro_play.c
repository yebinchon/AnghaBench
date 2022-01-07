
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {size_t length; int * events; } ;


 int clear_keyboard () ;
 int dprintf (char*,size_t,size_t) ;
 TYPE_1__* dynamic_macros ;
 int layer_clear () ;
 int layer_state ;
 int process_record (int *) ;

void dynamic_macro_play(uint8_t macro_id) {
  dprintf("dynamic macro: slot %d playback, length %d\n", macro_id, dynamic_macros[macro_id].length);

  uint32_t saved_layer_state = layer_state;

  clear_keyboard();
  layer_clear();

  for (uint8_t i = 0; i < dynamic_macros[macro_id].length; ++i) {
    process_record(&dynamic_macros[macro_id].events[i]);
  }

  clear_keyboard();

  layer_state = saved_layer_state;
}
