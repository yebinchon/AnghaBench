#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* rtc_obj; } ;
struct TYPE_3__ {int pwrmode; scalar_t__ irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_HIB_SLOW_CLK_CTR ; 
 int PYB_PWR_MODE_HIBERNATE ; 
 int /*<<< orphan*/  SL_STOP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__ pybsleep_data ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7 (void) {
    // check if we should enable timer wake-up
    if (pybsleep_data.rtc_obj->irq_enabled && (pybsleep_data.rtc_obj->pwrmode & PYB_PWR_MODE_HIBERNATE)) {
        if (!FUNC5()) {
            // hibernating is not possible, wait for the forced interrupt and return
            FUNC2(FAILED_SLEEP_DELAY_MS);
            return;
        }
    } else {
        // disable the timer as hibernate wake source
        FUNC1(PRCM_HIB_SLOW_CLK_CTR);
    }

    FUNC6(SL_STOP_TIMEOUT);
    FUNC3();
    // must be done just before entering hibernate mode
    FUNC4(true);
    FUNC0();
}