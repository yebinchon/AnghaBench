
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int COIN_SOUND ;
 scalar_t__ KC_LAYO ;
 int KC_LSHIFT ;
 int KC_RSHIFT ;
 int MOD_BIT (int ) ;
 int PLAY_SONG (float**) ;
 float** SONG (int ) ;
 size_t biton32 (int ) ;
 int default_layer_set (unsigned int) ;
 float*** default_layer_songs ;
 int default_layer_state ;
 scalar_t__* defaultlayers ;
 size_t defaultlayers_n ;
 int eeconfig_update_default_layer (int ) ;
 int get_mods () ;
 int host_keyboard_leds () ;
 int led_set (int ) ;

bool process_record_layout(uint16_t keycode, keyrecord_t *record) {
  uint32_t default_layer;
  uint8_t i;




  if (keycode != KC_LAYO || !record->event.pressed) {
    return 1;
  }

  if (get_mods() & (MOD_BIT(KC_LSHIFT)|MOD_BIT(KC_RSHIFT))) {

    eeconfig_update_default_layer(default_layer_state);



  } else {


    default_layer = biton32(default_layer_state);

    for (i = 1; i < defaultlayers_n; i++) {
      if (defaultlayers[(default_layer + i) % defaultlayers_n]) {
        break;
      }
    }
    if (i == defaultlayers_n) {


      return 0;
    }
    default_layer = (default_layer + i) % defaultlayers_n;
    default_layer_set(1U<<default_layer);
    led_set(host_keyboard_leds());



  }
  return 0;
}
