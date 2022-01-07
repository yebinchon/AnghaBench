
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;





 int IS_LAYER_ON (int ) ;




 int ONESHOT_PRESSED ;
 int ONESHOT_START ;
 int PLAY_SONG (int ) ;


 int _FUNCTN ;
 int _LOWER ;
 int _MEDIA ;
 int _NUMPAD ;
 int _ONESHOT ;
 int _RAISE ;
 int clear_oneshot_layer_state (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int set_oneshot_layer (int ,int ) ;
 int tone_dyn_macro_rec ;
 int tone_dyn_macro_stop ;
 int tone_numpad ;
 int tone_oneshot ;
 int tone_qwerty ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {

    if (!process_record_dynamic_macro(keycode, record)) {
        switch(keycode) {
          case 136:
          case 135:



              break;
          case 134:



              break;
        }
        return 0;
    }
    switch (keycode) {
        case 130:
            if (record->event.pressed) {
                layer_on(_ONESHOT);
                set_oneshot_layer(_ONESHOT, ONESHOT_START);
                clear_oneshot_layer_state(ONESHOT_PRESSED);



            }
            return 0;
            break;
        case 129:
            if (record->event.pressed) {
                if (IS_LAYER_ON(_NUMPAD)) {



                    layer_off(_NUMPAD);
                }
            }
            return 0;
            break;
        case 131:
            if (record->event.pressed) {
                if (!IS_LAYER_ON(_NUMPAD)) {



                    layer_on(_NUMPAD);
                }
            }
            return 0;
            break;
        case 128:
            if (record->event.pressed) {
                layer_on(_RAISE);
                update_tri_layer(_RAISE, _LOWER, _FUNCTN);
            } else {
                layer_off(_RAISE);
                update_tri_layer(_RAISE, _LOWER, _FUNCTN);
            }
            return 0;
            break;
        case 133:
            if (record->event.pressed) {
                layer_on(_LOWER);
                update_tri_layer(_RAISE, _LOWER, _FUNCTN);
            } else {
                layer_off(_LOWER);
                update_tri_layer(_RAISE, _LOWER, _FUNCTN);
            }
            return 0;
            break;
        case 132:
            if (record->event.pressed) {
                layer_on(_MEDIA);
            } else {
                layer_off(_MEDIA);
            }
            return 0;
            break;
    }
    return 1;
}
