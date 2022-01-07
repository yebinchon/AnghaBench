
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







 int _ADJUST ;
 int _ARROW ;
 int _LOWER ;
 int _NUMPAD ;
 int _RAISE ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int update_tri_layer (int ,int ,int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    switch (keycode) {
        case 131:
            if (record->event.pressed) {
                layer_on(_LOWER);
            } else {
                layer_off(_LOWER);
            }
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
            return 0;
        case 128:
            if (record->event.pressed) {
                layer_on(_RAISE);
            } else {
                layer_off(_RAISE);
            }
            update_tri_layer(_LOWER, _RAISE, _ADJUST);
            return 0;
        case 129:
            if (record->event.pressed) {
                layer_off(_ARROW);
                layer_off(_NUMPAD);
            }
            return 0;
        case 132:
            if (record->event.pressed) {
                layer_off(_NUMPAD);
                layer_on(_ARROW);
            }
            return 0;
        case 130:
            if (record->event.pressed) {
                layer_off(_ARROW);
                layer_on(_NUMPAD);
            }
            return 0;
    }
    return 1;
}
