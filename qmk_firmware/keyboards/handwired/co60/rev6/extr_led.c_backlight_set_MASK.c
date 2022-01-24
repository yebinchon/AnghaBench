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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int BACKLIGHT_LEVELS ; 
 int /*<<< orphan*/  PWMD4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t level) {
  uint32_t duty = (uint32_t)(FUNC1(0xFFFF * (uint32_t)level / BACKLIGHT_LEVELS));
  if (level == 0) {
    // Turn backlight off
    // Disable channel 3 on PWM4
    FUNC3(&PWMD4, 2);
  } else {
    // Turn backlight on
    if (!FUNC2()) {
      // Enable channel 3 on PWM4
      FUNC4(&PWMD4, 2, FUNC0(&PWMD4, 0xFFFF, duty));
    }
  }
}