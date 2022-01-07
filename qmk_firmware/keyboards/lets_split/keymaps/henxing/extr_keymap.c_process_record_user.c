
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



 int PLAY_SONG (int ) ;


 int _LOWER ;
 unsigned long _QWERTY ;
 unsigned long _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int tone_qwerty ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {


    bool return_value = 0;

    switch (keycode) {
        case 129:
            if (record->event.pressed) {



                persistent_default_layer_set(1UL<<_QWERTY);
            }
            break;

        case 130:
            if (record->event.pressed) {
                layer_on(_LOWER);
            } else {
                layer_off(_LOWER);
            }
            break;

        case 128:
            persistent_default_layer_set(1UL<<_RAISE);
            break;
        default:



            return_value = 1;
            break;
    }

    return return_value;
}
