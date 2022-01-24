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
 int /*<<< orphan*/  GPIOC ; 
 int /*<<< orphan*/  LED_GREEN ; 
 int /*<<< orphan*/  LED_RED ; 
 int /*<<< orphan*/  MODE_ANALOG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(void) {
  FUNC0();

  // C0, C1: Throttle inputs
  FUNC3(GPIOC, 0, MODE_ANALOG);
  FUNC3(GPIOC, 1, MODE_ANALOG);
  // DAC outputs on A4 and A5
  //   apparently they don't need GPIO setup

  // Enable transciever
  FUNC1(true);

  // Disable LEDs
  FUNC2(LED_RED, false);
  FUNC2(LED_GREEN, false);
}