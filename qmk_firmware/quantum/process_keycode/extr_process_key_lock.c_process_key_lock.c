
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ IS_STANDARD_KEYCODE (scalar_t__) ;
 scalar_t__ KC_LOCK ;
 scalar_t__ KEY_STATE (scalar_t__) ;
 int SET_KEY_STATE (scalar_t__) ;
 int UNSET_KEY_STATE (scalar_t__) ;
 scalar_t__ translate_keycode (scalar_t__) ;
 int watching ;

bool process_key_lock(uint16_t *keycode, keyrecord_t *record) {
    uint16_t translated_keycode = translate_keycode(*keycode);

    if (record->event.pressed) {

        if (!(IS_STANDARD_KEYCODE(translated_keycode) || translated_keycode == KC_LOCK)) {
            watching = 0;
            return 1;
        }


        if (translated_keycode == KC_LOCK) {
            watching = !watching;
            return 0;
        }

        if (IS_STANDARD_KEYCODE(translated_keycode)) {




            if (watching) {
                watching = 0;
                SET_KEY_STATE(translated_keycode);


                *keycode = translated_keycode;

                return 1;
            }

            if (KEY_STATE(translated_keycode)) {
                UNSET_KEY_STATE(translated_keycode);


                return 0;
            }
        }



        return 1;
    } else {

        return !(IS_STANDARD_KEYCODE(translated_keycode) && KEY_STATE(translated_keycode));
    }
}
