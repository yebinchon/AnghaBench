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
struct TYPE_2__ {scalar_t__ breathing; int /*<<< orphan*/  level; scalar_t__ enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PWMD3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ kb_backlight_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pwmCFG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(void) {
  FUNC4("backlight_init_ports()\n");
  FUNC3(GPIOA, 6, FUNC0(1));
  FUNC5(&PWMD3, &pwmCFG);
  // pwmEnableChannel(&PWMD3, 0, PWM_FRACTION_TO_WIDTH(&PWMD3, 0xFFFF,cie_lightness(0xFFFF)));
  if(kb_backlight_config.enable){
    FUNC1(kb_backlight_config.level);
    if(kb_backlight_config.breathing){
      FUNC2();
    }
  } else {
    FUNC1(0);
  }

}