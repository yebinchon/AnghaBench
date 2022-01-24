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
struct TYPE_2__ {int /*<<< orphan*/  raw; scalar_t__ cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ haptic_config ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

void FUNC3(void) {
    haptic_config.cont = 0;
    FUNC2("haptic_config.cont = %u\n", haptic_config.cont);
    FUNC1(haptic_config.raw);
#ifdef DRV2605L
    DRV_write(DRV_MODE, 0x00);
#endif
}