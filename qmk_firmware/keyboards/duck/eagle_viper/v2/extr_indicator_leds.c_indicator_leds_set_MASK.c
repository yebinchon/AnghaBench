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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  Device_STATUSLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(bool leds[8]) {
  uint8_t led_cnt;

  FUNC0();
  for(led_cnt = 0; led_cnt < 8; led_cnt++)
    FUNC2(leds[led_cnt] ? 255 : 0, Device_STATUSLED);
  FUNC1();
  FUNC3();
}