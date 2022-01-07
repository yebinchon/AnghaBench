
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int MACRO00 ;
 int MACRO15 ;
 int dynamic_keymap_macro_send (int) ;
 int layer_off (int) ;
 int layer_on (int) ;
 int process_record_backlight (int,TYPE_2__*) ;
 int process_record_user (int,TYPE_2__*) ;
 int update_tri_layer (int,int,int) ;

bool process_record_kb(uint16_t keycode, keyrecord_t *record)
{




 switch(keycode) {
  case 129:
   if (record->event.pressed) {
    layer_on(1);
    update_tri_layer(1, 2, 3);
   } else {
    layer_off(1);
    update_tri_layer(1, 2, 3);
   }
   return 0;
   break;
  case 128:
   if (record->event.pressed) {
    layer_on(2);
    update_tri_layer(1, 2, 3);
   } else {
    layer_off(2);
    update_tri_layer(1, 2, 3);
   }
   return 0;
   break;
 }
 return process_record_user(keycode, record);
}
