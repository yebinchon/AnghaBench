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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  LED_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  WS2812_ADDRESS ; 
 int /*<<< orphan*/  WS2812_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(LED_TYPE *ledarray, uint16_t leds) {
    static bool s_init = false;
    if (!s_init) {
        FUNC1();
        s_init = true;
    }

    FUNC0(WS2812_ADDRESS, (uint8_t *)ledarray, sizeof(LED_TYPE) * leds, WS2812_TIMEOUT);
}