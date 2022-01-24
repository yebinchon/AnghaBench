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
typedef  int /*<<< orphan*/  uint ;
struct ble_npl_callout {int active; scalar_t__ ticks; } ;
typedef  scalar_t__ ble_npl_time_t ;
typedef  int /*<<< orphan*/  ble_npl_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_NPL_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct ble_npl_callout*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

ble_npl_error_t FUNC3(struct ble_npl_callout *c, ble_npl_time_t ticks) {
    FUNC0("ble_npl_callout_reset(%p, %u) tnow=%u\n", c, (uint)ticks, (uint)FUNC2());
    c->active = true;
    c->ticks = FUNC1() + ticks;
    return BLE_NPL_OK;
}