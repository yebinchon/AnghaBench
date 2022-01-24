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
typedef  int /*<<< orphan*/  magic ;
typedef  int /*<<< orphan*/  len ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  delta ;
typedef  int /*<<< orphan*/  cal ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_CAL_ADDR ; 
 int /*<<< orphan*/  MEM_DELTA_ADDR ; 
 scalar_t__ MEM_MAGIC ; 
 int /*<<< orphan*/  MEM_USER_LEN_ADDR ; 
 int /*<<< orphan*/  MEM_USER_MAGIC_ADDR ; 
 scalar_t__ pyb_rtc_alarm0_expiry ; 
 scalar_t__ pyb_rtc_alarm0_wake ; 
 int /*<<< orphan*/  rtc_last_ticks ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

void FUNC4(void) {
    uint32_t magic;

    FUNC2(MEM_USER_MAGIC_ADDR, &magic, sizeof(magic));
    if (magic != MEM_MAGIC) {
        magic = MEM_MAGIC;
        FUNC3(MEM_USER_MAGIC_ADDR, &magic, sizeof(magic));
        uint32_t cal = FUNC1();
        int64_t delta = 0;
        FUNC3(MEM_CAL_ADDR, &cal, sizeof(cal));
        FUNC3(MEM_DELTA_ADDR, &delta, sizeof(delta));
        uint32_t len = 0;
        FUNC3(MEM_USER_LEN_ADDR, &len, sizeof(len));
    }
    // system_get_rtc_time() is always 0 after reset/deepsleep
    rtc_last_ticks = FUNC0();

    // reset ALARM0 state
    pyb_rtc_alarm0_wake = 0;
    pyb_rtc_alarm0_expiry = 0;
}