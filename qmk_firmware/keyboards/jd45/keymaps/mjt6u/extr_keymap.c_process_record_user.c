
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


 int DYN_REC_STOP ;
 int KC_POWER ;
 int KC_RCTL ;
 int KC_RSFT ;

 int MO (int ) ;
 int PLAY_NOTE_ARRAY (int ,int,int ) ;


 int _ADJUST ;
 unsigned long _QWERTY ;
 unsigned long _QWERTYNUMMODS ;
 int persistent_default_layer_set (unsigned long) ;
 int print (char*) ;
 int println (char*) ;
 int process_record_dynamic_macro (int,TYPE_2__*) ;
 int register_code (int ) ;
 int singular_key ;
 int tone_fnmac ;
 int tone_fnpc ;
 int unregister_code (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record)
{
    uint16_t macro_kc = (keycode == MO(_ADJUST) ? DYN_REC_STOP : keycode);
    if (!process_record_dynamic_macro(macro_kc, record))
    {
        return 0;
    }
    println(" ");
    print("process record");

    switch (keycode)
    {
    case 130:
        if (record->event.pressed)
        {

            register_code(KC_RSFT);
            register_code(KC_RCTL);
            register_code(KC_POWER);
            unregister_code(KC_POWER);
            unregister_code(KC_RCTL);
            unregister_code(KC_RSFT);
        }
        return 0;
        break;
    case 129:
        if (record->event.pressed)
        {
            persistent_default_layer_set(1UL << _QWERTY);



            print("Space-FN");
        }
        return 0;
        break;
    case 128:
        if (record->event.pressed)
        {
            persistent_default_layer_set(1UL << _QWERTYNUMMODS);



            print("Space-Numpad");
        }
        return 0;
        break;
    default:
        singular_key = 0;
        break;
    }

    return 1;
}
