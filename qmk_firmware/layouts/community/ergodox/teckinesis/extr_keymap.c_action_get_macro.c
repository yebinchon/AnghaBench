
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int macro_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_5__ {int interrupted; int count; } ;
struct TYPE_7__ {TYPE_2__ event; TYPE_1__ tap; } ;
typedef TYPE_3__ keyrecord_t ;


 int KC_BSLS ;
 int KC_CAPS ;
 int KC_EQL ;
 int KC_LSFT ;
 int KC_MINS ;
 int KC_MS_DOWN ;
 int KC_MS_LEFT ;
 int KC_MS_RIGHT ;
 int KC_MS_UP ;
 int KC_QUOT ;
 int KC_TAB ;




 int const* MACRO_NONE ;
 int MDIA ;
 int SPEC ;
 int SYMB ;
 int caps_shift ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int mdia_lock ;
 int mdia_shift ;
 int mousekey_off (int ) ;
 int mousekey_on (int ) ;
 int mousekey_send () ;
 int register_code (int ) ;
 int symb_lock ;
 int symb_shift ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {






        case 139:
        case 131:
        if (record->event.pressed && !record->tap.count) {
            if(++caps_shift > 2) caps_shift = 2;
            if(caps_shift == 2) {
                register_code(KC_CAPS);
                unregister_code(KC_CAPS);
            } else if(caps_shift == 1) {
                register_code(KC_LSFT);
            }
        } else {
            if(--caps_shift < 0) caps_shift = 0;
            if(caps_shift == 0) unregister_code(KC_LSFT);
        }
        break;

        case 136:
        if (record->event.pressed) {
            if(++symb_shift > 2) symb_shift = 2;
            if(symb_shift == 2) {
                symb_lock = !symb_lock;
            } else if(symb_shift == 1) {
                layer_on(SYMB);
            }
        } else {
            if(--symb_shift < 0) symb_shift = 0;
            if((symb_shift == 0) && (!symb_lock)) layer_off(SYMB);
        }
        break;

        case 138:
        if (record->event.pressed) {
            if (record->tap.count && (!mdia_shift) && (!mdia_lock)) {
                register_code(KC_TAB);
            } else {
                if(++mdia_shift > 2) mdia_shift = 2;
                if(mdia_shift == 2) {
                    mdia_lock = !mdia_lock;
                } else if(mdia_shift == 1) {
                    layer_on(MDIA);
                }
            }
        } else {
            if(record->tap.count && (!mdia_shift) && (!mdia_lock)) {
                unregister_code(KC_TAB);
            } else {
                if(--mdia_shift < 0) mdia_shift = 0;
                if((!mdia_shift) && (!mdia_lock)) layer_off(MDIA);
            }
        }
        break;

        case 137:
        if (record->event.pressed) {
            if (record->tap.count && !record->tap.interrupted) {
                register_code(KC_EQL);
            } else {
                layer_on(SPEC);
            }
        } else {
            if(record->tap.count && !record->tap.interrupted) {
                unregister_code(KC_EQL);
            } else {
                layer_off(SPEC);
            }
        }
        break;

        case 128:
        if (record->event.pressed) {
            if (record->tap.count && (!symb_shift) && (!symb_lock)) {
                register_code(KC_QUOT);
            } else {
                if(++symb_shift > 2) symb_shift = 2;
                if(symb_shift == 2) {
                    symb_lock = !symb_lock;
                } else if(symb_shift == 1) {
                    layer_on(SYMB);
                }
            }
        } else {
            if(record->tap.count && symb_shift == 0) {
                unregister_code(KC_QUOT);
            } else {
                if(--symb_shift < 0) symb_shift = 0;
                if((!symb_shift) && (!symb_lock)) layer_off(SYMB);
            }
        }
        break;

        case 130:
        if (record->event.pressed) {
            if (record->tap.count && (!mdia_shift) && (!mdia_lock)) {
                register_code(KC_BSLS);
            } else {
                if(++mdia_shift > 2) mdia_shift = 2;
                if(mdia_shift == 2) {
                    mdia_lock = !mdia_lock;
                } else if(mdia_shift == 1) {
                    layer_on(MDIA);
                }
            }
        } else {
            if(record->tap.count && (!mdia_shift) && (!mdia_lock)) {
                unregister_code(KC_BSLS);
            } else {
                if(--mdia_shift < 0) mdia_shift = 0;
                if((!mdia_shift) && (!mdia_lock)) layer_off(MDIA);
            }
        }
        break;

        case 129:
        if (record->event.pressed) {
            if (record->tap.count && !record->tap.interrupted) {
                register_code(KC_MINS);
            } else {
                layer_on(SPEC);
            }
        } else {
            if(record->tap.count && !record->tap.interrupted) {
                unregister_code(KC_MINS);
            } else {
                layer_off(SPEC);
            }
        }
        break;



        case 133:
        if (record->event.pressed) {
            mousekey_on(KC_MS_UP);
            mousekey_on(KC_MS_LEFT);
            mousekey_send();
        } else {
            mousekey_off(KC_MS_UP);
            mousekey_off(KC_MS_LEFT);
            mousekey_send();
        }
        break;

        case 132:
        if (record->event.pressed) {
            mousekey_on(KC_MS_UP);
            mousekey_on(KC_MS_RIGHT);
            mousekey_send();
        } else {
            mousekey_off(KC_MS_UP);
            mousekey_off(KC_MS_RIGHT);
            mousekey_send();
        }
        break;

        case 135:
        if (record->event.pressed) {
            mousekey_on(KC_MS_DOWN);
            mousekey_on(KC_MS_LEFT);
            mousekey_send();
        } else {
            mousekey_off(KC_MS_DOWN);
            mousekey_off(KC_MS_LEFT);
            mousekey_send();
        }
        break;

        case 134:
        if (record->event.pressed) {
            mousekey_on(KC_MS_DOWN);
            mousekey_on(KC_MS_RIGHT);
            mousekey_send();
        } else {
            mousekey_off(KC_MS_DOWN);
            mousekey_off(KC_MS_RIGHT);
            mousekey_send();
        }
        break;

        default:

            break;
    }

    return MACRO_NONE;
}
