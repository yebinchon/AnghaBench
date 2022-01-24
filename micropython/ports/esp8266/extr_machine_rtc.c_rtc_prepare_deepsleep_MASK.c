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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  delta ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_DELTA_ADDR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

void FUNC2(uint64_t sleep_us) {
    // RTC time will reset at wake up. Let's be preared for this.
    int64_t delta = FUNC0() + sleep_us;
    FUNC1(MEM_DELTA_ADDR, &delta, sizeof(delta));
}