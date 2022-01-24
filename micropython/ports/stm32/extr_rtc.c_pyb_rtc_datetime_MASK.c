#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_8__ {void* WeekDay; void* Date; void* Month; void* Year; } ;
struct TYPE_7__ {int /*<<< orphan*/  StoreOperation; int /*<<< orphan*/  DayLightSaving; int /*<<< orphan*/  TimeFormat; void* Seconds; void* Minutes; void* Hours; int /*<<< orphan*/  SubSeconds; } ;
typedef  TYPE_1__ RTC_TimeTypeDef ;
typedef  TYPE_2__ RTC_DateTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTCHandle ; 
 int /*<<< orphan*/  RTC_DAYLIGHTSAVING_NONE ; 
 int /*<<< orphan*/  RTC_FORMAT_BIN ; 
 int /*<<< orphan*/  RTC_HOURFORMAT12_AM ; 
 int /*<<< orphan*/  RTC_STOREOPERATION_SET ; 
 int /*<<< orphan*/  mp_const_none ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int,int /*<<< orphan*/ **) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC10(size_t n_args, const mp_obj_t *args) {
    FUNC8();
    if (n_args == 1) {
        // get date and time
        // note: need to call get time then get date to correctly access the registers
        RTC_DateTypeDef date;
        RTC_TimeTypeDef time;
        FUNC1(&RTCHandle, &time, RTC_FORMAT_BIN);
        FUNC0(&RTCHandle, &date, RTC_FORMAT_BIN);
        mp_obj_t tuple[8] = {
            FUNC6(2000 + date.Year),
            FUNC6(date.Month),
            FUNC6(date.Date),
            FUNC6(date.WeekDay),
            FUNC6(time.Hours),
            FUNC6(time.Minutes),
            FUNC6(time.Seconds),
            FUNC6(FUNC9(time.SubSeconds)),
        };
        return FUNC7(8, tuple);
    } else {
        // set date and time
        mp_obj_t *items;
        FUNC4(args[1], 8, &items);

        RTC_DateTypeDef date;
        date.Year = FUNC5(items[0]) - 2000;
        date.Month = FUNC5(items[1]);
        date.Date = FUNC5(items[2]);
        date.WeekDay = FUNC5(items[3]);
        FUNC2(&RTCHandle, &date, RTC_FORMAT_BIN);

        RTC_TimeTypeDef time;
        time.Hours = FUNC5(items[4]);
        time.Minutes = FUNC5(items[5]);
        time.Seconds = FUNC5(items[6]);
        time.TimeFormat = RTC_HOURFORMAT12_AM;
        time.DayLightSaving = RTC_DAYLIGHTSAVING_NONE;
        time.StoreOperation = RTC_STOREOPERATION_SET;
        FUNC3(&RTCHandle, &time, RTC_FORMAT_BIN);

        return mp_const_none;
    }
}