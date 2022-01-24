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
struct TYPE_2__ {scalar_t__ rgb_layer_change; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ user_config ; 

void FUNC4(void) {
  // Call the keymap level matrix init.

  // Read the user config from EEPROM
  user_config.raw = FUNC0();

  // Set default layer, if enabled
  if (user_config.rgb_layer_change) {
    FUNC1();
    FUNC3();
    FUNC2(1);
  }
}