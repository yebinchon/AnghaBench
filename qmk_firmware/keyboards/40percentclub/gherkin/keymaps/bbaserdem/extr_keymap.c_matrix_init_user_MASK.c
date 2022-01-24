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
struct TYPE_2__ {int level; int enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ backlight_config ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 

void FUNC6(void) {
    // Set LED's to max
    FUNC0(300);
    backlight_config.level = 2;
    backlight_config.enable = 1;
    FUNC2(backlight_config.raw);
    FUNC1(backlight_config.level);
    // Set RGB to rainbow mood light
    FUNC3();
    FUNC4(1);
    FUNC5(120,255,255);
    FUNC4(6);
}