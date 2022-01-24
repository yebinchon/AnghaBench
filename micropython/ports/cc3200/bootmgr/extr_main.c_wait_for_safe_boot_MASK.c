#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ActiveImg; int /*<<< orphan*/  PrevImg; } ;
typedef  TYPE_1__ sBootInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_0_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_1_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_2_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS ; 
 int /*<<< orphan*/  BOOTMGR_WAIT_SAFE_MODE_3_MS ; 
 int /*<<< orphan*/  IMG_ACT_FACTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT ; 
 int /*<<< orphan*/  MICROPY_SYS_LED_PORT_PIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRCM_SAFE_BOOT_BIT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5 (sBootInfo_t *psBootInfo) {
    if (FUNC3(BOOTMGR_WAIT_SAFE_MODE_0_MS)) {
        if (FUNC4(BOOTMGR_WAIT_SAFE_MODE_1_MS, BOOTMGR_WAIT_SAFE_MODE_1_BLINK_MS, false)) {
            // go back one step in time
            psBootInfo->ActiveImg = psBootInfo->PrevImg;
            if (FUNC4(BOOTMGR_WAIT_SAFE_MODE_2_MS, BOOTMGR_WAIT_SAFE_MODE_2_BLINK_MS, false)) {
                // go back directly to the factory image
                psBootInfo->ActiveImg = IMG_ACT_FACTORY;
                FUNC4(BOOTMGR_WAIT_SAFE_MODE_3_MS, BOOTMGR_WAIT_SAFE_MODE_3_BLINK_MS, true);
            }
        }
        // turn off the system led
        FUNC0(MICROPY_SYS_LED_PORT, MICROPY_SYS_LED_PORT_PIN, 0);
        // request a safe boot to the application
        FUNC1(PRCM_SAFE_BOOT_BIT);
    }
    // deinit the safe boot pin
    FUNC2();
}