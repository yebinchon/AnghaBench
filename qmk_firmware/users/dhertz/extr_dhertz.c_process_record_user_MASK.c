#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  CMD_ALT_C 134 
#define  CMD_GRV_CMD 133 
#define  CMD_SFT_L 132 
#define  CMD_TAB_CMD 131 
#define  CTRL_A 130 
#define  HSH_TLD 129 
#define  ISO_COUNTRY_CODE 128 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RGUI ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_GRAVE ; 
 int /*<<< orphan*/  X_NONUS_BSLASH ; 
 int /*<<< orphan*/  X_TAB ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int,TYPE_2__*) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case CMD_TAB_CMD:
            FUNC7(record, KC_LGUI, FUNC5(X_TAB));
            return false;
        case CMD_GRV_CMD:
            FUNC7(record, KC_RGUI, FUNC5(X_GRAVE));
            return false;
    }

    if (record->event.pressed) {
        switch(keycode) {
            case HSH_TLD:
                if (FUNC6()&(FUNC0(KC_LSFT)|FUNC0(KC_RSFT))) {
                    FUNC1(FUNC5(X_NONUS_BSLASH));
                } else {
                    FUNC1(FUNC2("3"));
                }
                break;
            case CTRL_A:
                FUNC1(FUNC3("a"));
                break;
            case CMD_ALT_C:
                FUNC1(FUNC4(FUNC2("c")));
                break;
            case CMD_SFT_L:
                FUNC1(FUNC4("L"));
                break;
            case ISO_COUNTRY_CODE:
                FUNC1("country_iso_alpha2_code");
                break;
            default:
                return FUNC8(keycode, record);
        }
        return false;
    }
    return FUNC8(keycode, record);
}