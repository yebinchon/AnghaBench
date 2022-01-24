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
struct TYPE_2__ {scalar_t__ disable_layer_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FLAG_NONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ g_suspend_state ; 
 TYPE_1__ keyboard_config ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(void) {
  if (g_suspend_state || keyboard_config.disable_layer_led) { return; }
  switch (FUNC0(layer_state)) {
    case 0:
      FUNC3(0);
      break;
    case 3:
      FUNC3(1);
      break;
    case 4:
      FUNC3(2);
      break;
    case 6:
      FUNC3(3);
      break;
   default:
    if (FUNC1() == LED_FLAG_NONE)
      FUNC2(0, 0, 0);
    break;
  }
}