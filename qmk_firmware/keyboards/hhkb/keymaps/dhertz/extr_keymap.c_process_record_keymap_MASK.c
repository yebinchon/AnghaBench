#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
#define  CMD_ALT_D 130 
#define  CMD_H 129 
#define  CMD_SPC 128 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_RGUI ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case CMD_SPC:
            FUNC1(record, KC_LGUI, " ");
            break;
        case CMD_H:
            FUNC1(record, KC_RGUI, "H");
            break;
        case CMD_ALT_D:
            FUNC1(record, KC_LGUI, FUNC0("D"));
            break;
        default:
            return true;
    }
    return false;
}