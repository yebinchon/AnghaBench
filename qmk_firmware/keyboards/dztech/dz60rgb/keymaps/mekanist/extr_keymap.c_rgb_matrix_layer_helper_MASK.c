#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/ * flags; } ;

/* Variables and functions */
 int DRIVER_LED_TOTAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LED_FLAG_MODIFIER ; 
 TYPE_1__ g_led_config ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (uint8_t red, uint8_t green, uint8_t blue) {
  for (int i = 0; i < DRIVER_LED_TOTAL; i++) {
    if (FUNC0(g_led_config.flags[i], LED_FLAG_MODIFIER)) {
        FUNC1( i, red, green, blue );
    }
  }
}