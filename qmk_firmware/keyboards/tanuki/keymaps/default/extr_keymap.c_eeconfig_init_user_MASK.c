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
struct TYPE_2__ {int layer_rgb; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__ user_config ; 

void FUNC4(void) { // in case EEPROM is reset, set up our custom config
    user_config.raw = 0;
    user_config.layer_rgb = true; // enable per-layer RGB by default
    FUNC0(user_config.raw);
    FUNC1();
    FUNC3(0,10,255);
    FUNC2(1);
}