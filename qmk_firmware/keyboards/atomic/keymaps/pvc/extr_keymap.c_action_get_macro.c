
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int LAYER_ADJUST ;
 int LAYER_FUNCTION ;
 int LAYER_LOWER ;
 int LAYER_MOUSE ;
 unsigned long LAYER_QWERTY ;
 int LAYER_UPPER ;
 int const* MACRO_NONE ;
 int TEMPO_DEFAULT ;
 int TIMBRE_12 ;
 int TIMBRE_25 ;
 int TIMBRE_50 ;
 int TIMBRE_75 ;
 int TIMBRE_DEFAULT ;
 int backlight_step () ;
 int breathing_enable () ;
 int breathing_period_dec () ;
 int breathing_period_default () ;
 int breathing_period_inc () ;
 int breathing_period_set (int) ;
 int breathing_pulse () ;
 int breathing_self_disable () ;
 int breathing_toggle () ;
 int decrease_tempo (int) ;
 int increase_tempo (int) ;
 int layer_invert (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int persistent_default_layer_set (unsigned long) ;
 int set_tempo (int ) ;
 int set_timbre (int ) ;
 int update_tri_layer (int ,int ,int ) ;
 int uprintf (char*) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) {


  switch(id) {

        case 147:
            if (record->event.pressed)
            {
        uprintf("1");
            }
            break;

        case 146:
            if (record->event.pressed)
            {
        uprintf("2");
            }
            break;

        case 145:
            if (record->event.pressed)
            {
        uprintf("3");
            }
            break;

        case 144:
            if (record->event.pressed)
            {
        uprintf("4");
            }
            break;

        case 143:
            if (record->event.pressed)
            {
        uprintf("5");
            }
            break;

        case 142:
            if (record->event.pressed)
            {
        uprintf("6");
            }
            break;

        case 141:
            if (record->event.pressed)
            {
        uprintf("7");
            }
            break;

        case 140:
            if (record->event.pressed)
            {
        uprintf("8");
            }
            break;

        case 139:
            if (record->event.pressed)
            {
        uprintf("9");
            }
            break;

        case 149:
            if (record->event.pressed)
            {
                breathing_toggle();
            }
            break;

        case 150:
            if (record->event.pressed)
            {
                breathing_period_inc();
            }
            break;

        case 151:
            if (record->event.pressed)
            {
                breathing_period_dec();
            }
            break;

        case 152:
            if (record->event.pressed)
            {
                breathing_period_default();
            }
            break;

        case 136:
            if (record->event.pressed)
            {
                persistent_default_layer_set(1UL<<LAYER_QWERTY);
            }
            break;

        case 128:
            if (record->event.pressed)
            {
                layer_on(LAYER_UPPER);
                breathing_period_set(2);
                breathing_pulse();
                update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            else
            {
                layer_off(LAYER_UPPER);
                update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            break;

        case 138:
            if (record->event.pressed)
            {
                layer_on(LAYER_LOWER);
                breathing_period_set(2);
                breathing_pulse();
                update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            else
            {
                layer_off(LAYER_LOWER);
                update_tri_layer(LAYER_LOWER, LAYER_UPPER, LAYER_ADJUST);
            }
            break;

        case 148:
            if (record->event.pressed)
            {
                breathing_period_set(3);
                breathing_enable();
                layer_on(LAYER_FUNCTION);
            }
            else
            {
                breathing_period_set(1);
                breathing_self_disable();
                layer_off(LAYER_FUNCTION);
            }
            break;
        default:
            break;

    }
    return MACRO_NONE;
}
