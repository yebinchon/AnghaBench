#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  nlr_buf_t ;
struct TYPE_6__ {TYPE_2__* wlan_obj; TYPE_1__* rtc_obj; } ;
struct TYPE_5__ {scalar_t__ irq_enabled; } ;
struct TYPE_4__ {int pwrmode; scalar_t__ irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED_SLEEP_DELAY_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_LPDS_HOST_IRQ ; 
 int /*<<< orphan*/  PRCM_LPDS_TIMER ; 
 int PYB_PWR_MODE_LPDS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_3__ pybsleep_data ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10 (void) {
    nlr_buf_t nlr;

    // check if we should enable timer wake-up
    if (pybsleep_data.rtc_obj->irq_enabled && (pybsleep_data.rtc_obj->pwrmode & PYB_PWR_MODE_LPDS)) {
        if (!FUNC9()) {
            // lpds entering is not possible, wait for the forced interrupt and return
            FUNC4(FAILED_SLEEP_DELAY_MS);
            return;
        }
    } else {
        // disable the timer as wake source
        FUNC0(PRCM_LPDS_TIMER);
    }

    // do we need network wake-up?
    if (pybsleep_data.wlan_obj->irq_enabled) {
        FUNC1 (PRCM_LPDS_HOST_IRQ);
        FUNC8();
    } else {
        FUNC0 (PRCM_LPDS_HOST_IRQ);
    }

    // entering and exiting suspended mode must be an atomic operation
    // therefore interrupts need to be disabled
    uint primsk = FUNC2();
    if (FUNC6(&nlr) == 0) {
        FUNC7();
        FUNC5();
    }

    // an exception is always raised when exiting suspend mode
    FUNC3(primsk);
}