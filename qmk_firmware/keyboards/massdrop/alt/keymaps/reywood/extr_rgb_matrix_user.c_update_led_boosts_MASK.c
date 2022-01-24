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

/* Variables and functions */
 int ISSI3733_LED_COUNT ; 
 scalar_t__ LED_BOOST_REFRESH_INTERVAL_IN_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  last_boost_update ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void) {
  if (FUNC2(last_boost_update) > LED_BOOST_REFRESH_INTERVAL_IN_MS) {
    last_boost_update = FUNC3();

    uint8_t new_led_boosts[ISSI3733_LED_COUNT];
    FUNC0(new_led_boosts);
    FUNC1(new_led_boosts);
  }
}