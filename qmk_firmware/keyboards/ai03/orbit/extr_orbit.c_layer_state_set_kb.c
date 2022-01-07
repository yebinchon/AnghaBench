
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {void* current_layer; } ;


 void* biton32 (int ) ;
 void* current_layer ;
 scalar_t__ isLeftHand ;
 scalar_t__ is_keyboard_master () ;
 int layer_state_set_user (int ) ;
 TYPE_1__ serial_m2s_buffer ;
 int set_layer_indicators (void*) ;

uint32_t layer_state_set_kb(uint32_t state) {

 if (is_keyboard_master())
 {

  current_layer = biton32(state);
  serial_m2s_buffer.current_layer = biton32(state);


  if (isLeftHand)
  {
   set_layer_indicators(biton32(state));
  }

 }



 return layer_state_set_user(state);
}
