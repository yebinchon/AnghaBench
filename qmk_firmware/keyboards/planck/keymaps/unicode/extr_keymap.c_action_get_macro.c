
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int nkro; int raw; } ;


 int D (int ) ;
 int E ;
 int END ;
 int F ;
 int KC_RSFT ;
 int L ;
 int const* MACRO (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;

 int O ;
 int PLAY_SONG (int ) ;
 int R ;
 int U (int ) ;
 int V ;
 int const _ADJUST ;



 int const _PLOVER ;


 int backlight_step () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_keymap () ;
 int eeconfig_update_keymap (int ) ;
 TYPE_3__ keymap_config ;
 int layer_off (int const) ;
 int layer_on (int const) ;
 int persistent_default_layer_set (unsigned long) ;
 int register_code (int ) ;
 int stop_all_notes () ;
 int tone_colemak ;
 int tone_dvorak ;
 int tone_plover ;
 int tone_plover_gb ;
 int tone_qwerty ;
 int unregister_code (int ) ;
 int update_tri_layer (int const,int const,int const) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
      switch(id) {
        case 129:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<129);
          }
          break;
        case 132:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<132);
          }
          break;
        case 131:
          if (record->event.pressed) {



            persistent_default_layer_set(1UL<<131);
          }
          break;
        case 130:
          if (record->event.pressed) {
            layer_on(130);
            update_tri_layer(130, 128, _ADJUST);
          } else {
            layer_off(130);
            update_tri_layer(130, 128, _ADJUST);
          }
          break;
        case 128:
          if (record->event.pressed) {
            layer_on(128);
            update_tri_layer(130, 128, _ADJUST);
          } else {
            layer_off(128);
            update_tri_layer(130, 128, _ADJUST);
          }
          break;
        case 133:
          if (record->event.pressed) {
            register_code(KC_RSFT);



          } else {
            unregister_code(KC_RSFT);
          }
        break;
        case 12:
          if (record->event.pressed) {




            layer_off(128);
            layer_off(130);
            layer_off(_ADJUST);
            layer_on(_PLOVER);
            if (!eeconfig_is_enabled()) {
                eeconfig_init();
            }
            keymap_config.raw = eeconfig_read_keymap();
            keymap_config.nkro = 1;
            eeconfig_update_keymap(keymap_config.raw);
          }
        break;
        case 13:
          if (record->event.pressed) {



            layer_off(_PLOVER);
          }
        break;
        case 14:
          if (record->event.pressed) {
            return MACRO( D(E), D(R), D(F), D(V), D(O), D(L), U(E), U(R), U(F), U(V), U(O), U(L), END );
          }
        break;
      }
    return MACRO_NONE;
}
