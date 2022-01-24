#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {void* red_mode; void* green_mode; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
#define  COLEMAK 131 
#define  DVORAK 130 
#define  LED 129 
 void* LED_OFF ; 
 void* LED_ON ; 
#define  QWERTY 128 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__ led_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case QWERTY:
            if (record->event.pressed) {
                FUNC1(_QWERTY);
            }
            return false;
            break;
        case COLEMAK:
            if (record->event.pressed) {
                FUNC1(_COLEMAK);
            }
            return false;
            break;
        case DVORAK:
            if (record->event.pressed) {
                FUNC1(_DVORAK);
            }
            return false;
            break;
        case LED:
            if (record->event.pressed) {
                if (led_config.red_mode == LED_ON && led_config.green_mode == LED_ON) {
                    led_config.red_mode   = LED_OFF;
                    led_config.green_mode = LED_OFF;
                } else if (led_config.red_mode == LED_OFF && led_config.green_mode == LED_OFF) {
                    led_config.red_mode   = LED_ON;
                    led_config.green_mode = LED_ON;
                }
            }
            FUNC0(led_config.raw);
            return false;
            break;
    }
    return true;
}