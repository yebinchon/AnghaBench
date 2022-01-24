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
typedef  int uint32_t ;

/* Variables and functions */
 int BACKLIGHT_LEVELS ; 
 int /*<<< orphan*/  PWMD3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(uint8_t level) {
    FUNC3("backlight_set(%d)\n", level);
    uint32_t duty = (uint32_t)(FUNC1(0xFFFF * (uint32_t) level / BACKLIGHT_LEVELS));
    FUNC3("duty: (%d)\n", duty);
    if (level == 0) {
        // Turn backlight off
        FUNC4(&PWMD3, 0);
    } else {
      // Turn backlight on
      if(!FUNC2()){
        FUNC5(&PWMD3, 0, FUNC0(&PWMD3,0xFFFF,duty));
      }
    }
}