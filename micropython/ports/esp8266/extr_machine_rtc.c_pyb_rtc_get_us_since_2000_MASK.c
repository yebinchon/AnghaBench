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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  delta ;
typedef  int /*<<< orphan*/  cal ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CAL_ADDR ; 
 int /*<<< orphan*/  MEM_DELTA_ADDR ; 
 scalar_t__ rtc_last_ticks ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

uint64_t FUNC3() {
    uint32_t cal;
    int64_t delta;
    uint32_t rtc_ticks;

    FUNC1(MEM_CAL_ADDR, &cal, sizeof(cal));
    FUNC1(MEM_DELTA_ADDR, &delta, sizeof(delta));

    // ESP-SDK system_get_rtc_time() only returns uint32 and therefore
    // overflow about every 7:45h.  Thus, we have to check for
    // overflow and handle it.
    rtc_ticks = FUNC0();
    if (rtc_ticks < rtc_last_ticks) {
        // Adjust delta because of RTC overflow.
        delta += (uint64_t)cal << 20;
        FUNC2(MEM_DELTA_ADDR, &delta, sizeof(delta));
    }
    rtc_last_ticks = rtc_ticks;

    return (((uint64_t)rtc_ticks * cal) >> 12) + delta;
}