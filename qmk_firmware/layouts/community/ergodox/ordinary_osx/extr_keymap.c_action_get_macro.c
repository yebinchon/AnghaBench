
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


 int COMM ;
 int D (int ) ;
 int DOT ;

 int END ;
 int EQL ;

 int I (int) ;
 int KC_BSLS ;
 int KC_EQL ;
 int KC_GRV ;
 int KC_MS_DOWN ;
 int KC_MS_LEFT ;
 int KC_MS_RIGHT ;
 int KC_MS_UP ;
 int KC_QUOT ;
 int KC_TAB ;

 int LSFT ;



 int const* MACRO (int ,int ,int ,int ,int ,int ) ;
 int const* MACRO_NONE ;
 int MDIA ;


 int MINS ;






 int SPEC ;
 int SYMB ;
 int T (int) ;
 int U (int ) ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int mdia_lock ;
 int mdia_shift ;
 int mousekey_off (int ) ;
 int mousekey_on (int ) ;
 int mousekey_send () ;
 int register_code (int ) ;
 int spec_shift ;
 int symb_lock ;
 int symb_shift ;
 int unregister_code (int ) ;

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt)
{
    switch(id) {





        case 137:
        if (record->event.pressed) {
            if(++symb_shift > 2) symb_shift = 2;
            if(spec_shift) symb_lock = !symb_lock;
            layer_on(SYMB);
        } else {
            if(--symb_shift < 0) symb_shift = 0;
            if((!symb_shift) && (!symb_lock)) layer_off(SYMB);
        }
        break;

        case 139:
        if (record->event.pressed) {
           if (record->tap.count && (!mdia_shift) && (!mdia_lock) && (!spec_shift)) {
                register_code(KC_TAB);
            } else {
                if(spec_shift) mdia_lock = !mdia_lock;
                if(++mdia_shift > 2) mdia_shift = 2;
                layer_on(MDIA);
            }
        } else {
            if(record->tap.count && (!mdia_shift) && (!mdia_lock) && (!spec_shift)) {
                unregister_code(KC_TAB);
            } else {
                if(--mdia_shift < 0) mdia_shift = 0;
                if((!mdia_shift) && (!mdia_lock)) layer_off(MDIA);
            }
        }
        break;

        case 138:
        if (record->event.pressed) {
            if(symb_shift) symb_lock = !symb_lock;
            else if(mdia_shift) mdia_lock = !mdia_lock;
            else if (record->tap.count && !record->tap.interrupted && (!spec_shift)) {
                register_code(KC_GRV);
            } else {
                if(++spec_shift > 2) spec_shift = 2;
                layer_on(SPEC);
            }
        } else {
            if(record->tap.count && !record->tap.interrupted && (!spec_shift)) {
                unregister_code(KC_GRV);
            } else {
                if(--spec_shift < 0) spec_shift = 0;
                if(!spec_shift) layer_off(SPEC);
            }
        }
        break;

        case 128:
        if (record->event.pressed) {
            if (record->tap.count && (!symb_shift) && (!symb_lock) && (!spec_shift)) {
                register_code(KC_QUOT);
            } else {
                if(++symb_shift > 2) symb_shift = 2;
                if(spec_shift) symb_lock = !symb_lock;
                layer_on(SYMB);
            }
        } else {
            if(record->tap.count && (!symb_shift) && (!symb_lock) && (!spec_shift)) {
                unregister_code(KC_QUOT);
            } else {
                if(--symb_shift < 0) symb_shift = 0;
                if((!symb_shift) && (!symb_lock)) layer_off(SYMB);
            }
        }
        break;

        case 130:
        if (record->event.pressed) {
            if (record->tap.count && (!mdia_shift) && (!mdia_lock) && (!spec_shift)) {
                register_code(KC_BSLS);
            } else {
                if(++mdia_shift > 2) mdia_shift = 2;
                if(spec_shift) mdia_lock = !mdia_lock;
                layer_on(MDIA);
            }
        } else {
            if(record->tap.count && (!mdia_shift) && (!mdia_lock) && (!spec_shift)) {
                unregister_code(KC_BSLS);
            } else {
                if(--mdia_shift < 0) mdia_shift = 0;
                if((!mdia_shift) && (!mdia_lock)) layer_off(MDIA);
            }
        }
        break;

        case 129:
        if (record->event.pressed) {
            if(symb_shift) symb_lock = !symb_lock;
            else if(mdia_shift) mdia_lock = !mdia_lock;
            else if (record->tap.count && !record->tap.interrupted && (!spec_shift)) {
                register_code(KC_EQL);
            } else {
                if(++spec_shift > 2) spec_shift = 2;
                layer_on(SPEC);
            }
        } else {
            if(record->tap.count && !record->tap.interrupted && (!spec_shift)) {
                unregister_code(KC_EQL);
            } else {
                if(--spec_shift < 0) spec_shift = 0;
                if(!spec_shift) layer_off(SPEC);
            }
        }
        break;

        case 131:
        if (record->event.pressed) {
            return MACRO( I(10), D(LSFT), T(1), U(LSFT), T(EQL), END );
        }
        break;

        case 140:
        if (record->event.pressed) {
            return MACRO( I(10), D(LSFT), T(COMM), U(LSFT), T(EQL), END );
        }
        break;

        case 136:
        if (record->event.pressed) {
            return MACRO( I(10), D(LSFT), T(DOT), U(LSFT), T(EQL), END );
        }
        break;

        case 141:
        if (record->event.pressed) {
            return MACRO( I(10), T(MINS), D(LSFT), T(DOT), U(LSFT), END );
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
