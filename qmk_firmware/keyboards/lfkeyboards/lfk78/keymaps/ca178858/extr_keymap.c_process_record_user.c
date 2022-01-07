
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int keyrecord_t ;


 int CS_GO ;
 int KC_LGUI ;
 int MOD_BIT (int ) ;
 int get_mods () ;
 int layer_state ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if((layer_state & (1 << CS_GO)) && (keycode == 44)){
    if(get_mods() & (MOD_BIT(KC_LGUI))){
      return 0;
    }
  }
  return 1;
}
