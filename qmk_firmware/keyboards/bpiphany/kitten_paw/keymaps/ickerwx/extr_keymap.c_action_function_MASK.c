#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  CTRL_CLICK 134 
 int /*<<< orphan*/  KC_0 ; 
 int /*<<< orphan*/  KC_7 ; 
 int /*<<< orphan*/  KC_8 ; 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_BTN1 ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RALT ; 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LALT_CURLY 133 
#define  LCTRL_BRACKET 132 
#define  LSHFT_PAREN 131 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RALT_CURLY 130 
#define  RCTRL_BRACKET 129 
#define  RSHFT_PAREN 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(keyrecord_t *record, uint8_t id, uint8_t opt) {
    // The code is copied from keymap_hasu.c in the tmk keyboards hhkb folder
    switch (id) {
        case LCTRL_BRACKET:
            FUNC7(record, KC_LCTL, KC_RALT, KC_8);
            break;
        case RCTRL_BRACKET:
            FUNC7(record, KC_RCTL, KC_RALT, KC_9);
            break;
        case LALT_CURLY:
            FUNC7(record, KC_LALT, KC_RALT, KC_7);
            break;
        case RALT_CURLY:
            FUNC7(record, KC_RALT, KC_RALT, KC_0);
            break;
        case LSHFT_PAREN:
            FUNC7(record, KC_LSFT, KC_LSFT, KC_8);
            break;
        case RSHFT_PAREN:
            FUNC7(record, KC_RSFT, KC_LSFT, KC_9);
            break;
        case CTRL_CLICK:
            if (record->event.pressed) {
                FUNC1();
                FUNC5(FUNC0(KC_LCTL));
                FUNC6();
                FUNC9(5);
                FUNC3(KC_BTN1);
                FUNC4();
                FUNC9(10);
                FUNC2(KC_BTN1);
                FUNC4();
                FUNC9(5);
                FUNC8(FUNC0(KC_LCTL));
                FUNC6();
            }
            break;
    }
}