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

/* Variables and functions */
 int /*<<< orphan*/  LED_BRIGHTNESS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ mcp23018_status ; 

void FUNC16(void)
{
    FUNC1();
    FUNC2(LED_BRIGHTNESS_DEFAULT);
    FUNC11();
    FUNC0(50);
    FUNC13();
    FUNC0(50);
    FUNC15();
    FUNC0(50);
#ifdef LEFT_LEDS
    ergodox_left_led_1_on();
    _delay_ms(50);
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
    ergodox_left_led_2_on();
    _delay_ms(50);
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
    ergodox_left_led_3_on();
    _delay_ms(50);
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
#endif
    FUNC10();
    FUNC0(50);
    FUNC12();
    FUNC0(50);
    FUNC14();
#ifdef LEFT_LEDS
    _delay_ms(50);
    ergodox_left_led_1_off();
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
    _delay_ms(50);
    ergodox_left_led_2_off();
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
    _delay_ms(50);
    ergodox_left_led_3_off();
    if (!mcp23018_status) {
      mcp23018_status = ergodox_left_leds_update();
    }
#endif

    //ergodox_led_all_on();
    //_delay_ms(333);
    FUNC1();
}