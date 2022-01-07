
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


 int const* MACRO_NONE ;


 int breathing_enable () ;
 int breathing_period_set (int) ;
 int breathing_pulse () ;
 int breathing_self_disable () ;
 int layer_off (int) ;
 int layer_on (int) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{

    switch (id)
    {
    case 129:


        if (record->event.pressed)
        {
            breathing_period_set(3);
            breathing_enable();
            layer_on(1);
        }
        else
        {
            breathing_period_set(1);
            breathing_self_disable();
            layer_off(1);
        }
        break;
    case 128:
        if (record->event.pressed)
        {
            breathing_period_set(2);
            breathing_pulse();
            layer_on(2);
        }
        else
        {
            breathing_period_set(1);
            breathing_self_disable();
            layer_off(2);
        }
        break;
    }
    return MACRO_NONE;
}
