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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint ;
struct ble_npl_sem {scalar_t__ count; } ;
typedef  scalar_t__ ble_npl_time_t ;
typedef  int /*<<< orphan*/  ble_npl_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_NPL_OK ; 
 int /*<<< orphan*/  BLE_NPL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

ble_npl_error_t FUNC4(struct ble_npl_sem *sem, ble_npl_time_t timeout) {
    FUNC0("ble_npl_sem_pend(%p, %u) count=%u\n", sem, (uint)timeout, (uint)sem->count);
    if (sem->count == 0) {
        uint32_t t0 = FUNC2();
        while (sem->count == 0 && FUNC2() - t0 < timeout) {
            extern void FUNC0(void);
            FUNC0();
            if (sem->count != 0) {
                break;
            }
            FUNC1();
        }
        if (sem->count == 0) {
            FUNC3("timeout\n");
            return BLE_NPL_TIMEOUT;
        }
        FUNC0("got response in %u ms\n", (int)(FUNC2() - t0));
    }
    sem->count -= 1;
    return BLE_NPL_OK;
}