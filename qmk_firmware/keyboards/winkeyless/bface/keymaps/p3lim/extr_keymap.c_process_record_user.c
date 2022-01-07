
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;




 int KC_ESCAPE ;
 int KC_GRAVE ;
 int MOD_MASK_SHIFT ;
 int get_mods () ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record){
 switch(keycode){
  case 129:
   if(record->event.pressed){
    if(get_mods() & MOD_MASK_SHIFT)
     register_code(KC_GRAVE);
    else
     register_code(KC_ESCAPE);
   } else {
    if(get_mods() & MOD_MASK_SHIFT)
     unregister_code(KC_GRAVE);
    else
     unregister_code(KC_ESCAPE);
   }
   return 0;
  case 128:
   if(record->event.pressed){
    if(get_mods() & MOD_MASK_SHIFT)
     register_code(KC_ESCAPE);
    else
     register_code(KC_GRAVE);
   } else {
    if(get_mods() & MOD_MASK_SHIFT)
     unregister_code(KC_ESCAPE);
    else
     unregister_code(KC_GRAVE);
   }
   return 0;
 }
 return 1;
}
