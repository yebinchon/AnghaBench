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
struct TYPE_2__ {int cont; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ haptic_config ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void FUNC3(void) {
    haptic_config.cont = 1;
    FUNC2("haptic_config.cont = %u\n", haptic_config.cont);
    FUNC1(haptic_config.raw);
#ifdef DRV2605L
    DRV_rtp_init();
#endif
}