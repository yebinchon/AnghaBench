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
struct TYPE_2__ {scalar_t__ level; int enable; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 scalar_t__ BACKLIGHT_LEVELS ; 
 TYPE_1__ backlight_config ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    if (backlight_config.level < BACKLIGHT_LEVELS) {
        backlight_config.level++;
    }
    backlight_config.enable = 1;
    FUNC2(backlight_config.raw);
    FUNC1("backlight increase: %u\n", backlight_config.level);
    FUNC0(backlight_config.level);
}