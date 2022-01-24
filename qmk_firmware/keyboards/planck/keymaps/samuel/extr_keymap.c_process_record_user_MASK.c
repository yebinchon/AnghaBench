#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_0 ; 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_BSLASH ; 
 int /*<<< orphan*/  KC_C ; 
#define  KC_COM 156 
 int /*<<< orphan*/  KC_DELETE ; 
#define  KC_DIR 155 
 int /*<<< orphan*/  KC_DOWN ; 
#define  KC_DVORAK 154 
#define  KC_EMAIL 153 
 int /*<<< orphan*/  KC_EQUAL ; 
#define  KC_EZALT 152 
#define  KC_EZCOPY 151 
#define  KC_EZCTRL 150 
#define  KC_EZCUT 149 
#define  KC_EZDOWN 148 
#define  KC_EZGUI 147 
#define  KC_EZLEFT 146 
#define  KC_EZPSTE 145 
#define  KC_EZRGHT 144 
#define  KC_EZSHFT 143 
#define  KC_EZUNDO 142 
#define  KC_EZUP 141 
 int /*<<< orphan*/  KC_GRAVE ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LBRACKET ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LEFT ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_MINUS ; 
#define  KC_NAME 140 
#define  KC_QWERTY 139 
 int /*<<< orphan*/  KC_RALT ; 
 int /*<<< orphan*/  KC_RBRACKET ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RGHT ; 
 int /*<<< orphan*/  KC_RGUI ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int /*<<< orphan*/  KC_SLASH ; 
#define  KC_T_LALT 138 
#define  KC_T_LCTL 137 
#define  KC_T_LGUI 136 
#define  KC_T_LRSE 135 
#define  KC_T_LSFT 134 
#define  KC_T_RALT 133 
#define  KC_T_RCTL 132 
#define  KC_T_RGUI 131 
#define  KC_T_RRSE 130 
#define  KC_T_RSFT 129 
 int /*<<< orphan*/  KC_UP ; 
#define  KC_USER 128 
 int /*<<< orphan*/  KC_V ; 
 int /*<<< orphan*/  KC_X ; 
 int /*<<< orphan*/  KC_Z ; 
 int /*<<< orphan*/  MOD_LALT ; 
 int /*<<< orphan*/  MOD_LCTL ; 
 int /*<<< orphan*/  MOD_LGUI ; 
 int /*<<< orphan*/  MOD_LSFT ; 
 int /*<<< orphan*/  ONESHOT_PRESSED ; 
 int /*<<< orphan*/  ONESHOT_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  _COMMAND ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int last_mod ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tap_timer ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

bool FUNC16(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {

case KC_DVORAK:
if (record->event.pressed) {
    FUNC11(_DVORAK);
}
return true;
break;

case KC_QWERTY:
if (record->event.pressed) {
    FUNC11(_QWERTY);
}
return true;
break;

case KC_T_LALT:
if (record->event.pressed) {
    FUNC6(FUNC1(KC_9), KC_LALT, 0);
} else {
    FUNC5(FUNC1(KC_9), KC_LALT, 0);
}
return false;
break;
case KC_T_RALT:
if (record->event.pressed) {
    FUNC6(FUNC1(KC_0), KC_RALT, 1);
} else {
    FUNC5(FUNC1(KC_0), KC_RALT, 1);
}
return false;
break;

case KC_T_LGUI:
if (record->event.pressed) {
    FUNC6(KC_GRAVE, KC_LGUI, 2);
} else {
    FUNC5(KC_GRAVE, KC_LGUI, 2);
}
return false;
break;
case KC_T_RGUI:
if (record->event.pressed) {
    FUNC6(KC_BSLASH, KC_RGUI, 3);
} else {
    FUNC5(KC_BSLASH, KC_RGUI, 3);
}
return false;
break;

case KC_T_LCTL:
if (record->event.pressed) {
    FUNC6(KC_LBRACKET, KC_LCTL, 4);
} else {
    FUNC5(KC_LBRACKET, KC_LCTL, 4);
}
return false;
break;
case KC_T_RCTL:
if (record->event.pressed) {
    FUNC6(KC_RBRACKET, KC_RCTL, 5);
} else {
    FUNC5(KC_RBRACKET, KC_RCTL, 5);
}
return false;
break;

case KC_T_LSFT:
if (record->event.pressed) {
    FUNC6(KC_EQUAL, KC_LSFT, 6);
} else {
    FUNC5(KC_EQUAL, KC_LSFT, 6);
}
return false;
break;
case KC_T_RSFT:
if (record->event.pressed) {
    FUNC6(KC_MINUS, KC_RSFT, 7);
} else {
    FUNC5(KC_MINUS, KC_RSFT, 7);
}
return false;
break;

case KC_T_LRSE:
if (record->event.pressed) {
    tap_timer = FUNC14();
    last_mod = 8;
    FUNC4(_RISE);
} else {
    FUNC3(_RISE);
    if (last_mod == 8 && FUNC13(tap_timer) < TAPPING_TERM) {
        FUNC12(KC_DELETE);
        last_mod = 10;
    }
}
return false;
break;
case KC_T_RRSE:
if (record->event.pressed) {
    tap_timer = FUNC14();
    last_mod = 9;
    FUNC4(_RISE);
} else {
    FUNC3(_RISE);
    if (last_mod == 9 && FUNC13(tap_timer) < TAPPING_TERM) {
        FUNC12(KC_SLASH);
        last_mod = 10;
    }
}
return false;
break;

case KC_EZSHFT:
if (record->event.pressed) {
    FUNC10(MOD_LSFT);
    last_mod = 10;
}
return false;
break;
case KC_EZCTRL:
if (record->event.pressed) {
    FUNC10(MOD_LCTL);
    last_mod = 10;
}
return false;
break;
case KC_EZALT:
if (record->event.pressed) {
    FUNC10(MOD_LALT);
    last_mod = 10;
}
return false;
break;
case KC_EZGUI:
if (record->event.pressed) {
    FUNC10(MOD_LGUI);
    last_mod = 10;
}
return false;
break;

case KC_EZRGHT:
if (record->event.pressed) {
    FUNC7(KC_LCTL);
    FUNC12(FUNC1(KC_RGHT));
    FUNC15(KC_LCTL);
    last_mod = 10;
}
return false;
break;
case KC_EZLEFT:
if (record->event.pressed) {
    FUNC7(KC_LCTL);
    FUNC12(FUNC1(KC_LEFT));
    FUNC15(KC_LCTL);
    last_mod = 10;
}
return false;
break;
case KC_EZDOWN:
if (record->event.pressed) {
    FUNC7(KC_LCTL);
    FUNC12(FUNC1(KC_DOWN));
    FUNC15(KC_LCTL);
    last_mod = 10;
}
return false;
break;
case KC_EZUP:
if (record->event.pressed) {
    FUNC7(KC_LCTL);
    FUNC12(FUNC1(KC_UP));
    FUNC15(KC_LCTL);
    last_mod = 10;
}
return false;
break;

case KC_EZUNDO:
if (record->event.pressed) {
    FUNC12(FUNC0(KC_Z));
    last_mod = 10;
}
return false;
break;
case KC_EZCOPY:
if (record->event.pressed) {
    FUNC12(FUNC0(KC_C));
    last_mod = 10;
}
return false;
break;
case KC_EZCUT:
if (record->event.pressed) {
    FUNC12(FUNC0(KC_X));
    last_mod = 10;
}
return false;
break;
case KC_EZPSTE:
if (record->event.pressed) {
    FUNC12(FUNC0(KC_V));
    last_mod = 10;
}
return false;
break;

case KC_COM:
if (record->event.pressed) {
    FUNC4(_COMMAND);
    FUNC9(_COMMAND, ONESHOT_START);
    last_mod = 10;
} else {
    FUNC2 (ONESHOT_PRESSED);
}
return false;
break;

case KC_USER:
if (record->event.pressed) {
    FUNC8("mhostley");
    last_mod = 10;
}
return true;
break;
case KC_EMAIL:
if (record->event.pressed) {
    FUNC8("mhostley@gmail.com");
    last_mod = 10;
}
return true;
break;
case KC_NAME:
if (record->event.pressed) {
    FUNC8("Samuel Jahnke");
    last_mod = 10;
}
return true;
break;
case KC_DIR:
if (record->event.pressed) {
    FUNC8("home/mhostley/");
    last_mod = 10;
}
return true;
break;

}
last_mod = 10;
return true;
}