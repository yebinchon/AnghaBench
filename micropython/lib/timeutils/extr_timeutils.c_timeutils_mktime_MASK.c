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
typedef  scalar_t__ mp_uint_t ;
typedef  int mp_int_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int,int,int,int) ; 

mp_uint_t FUNC2(mp_uint_t year, mp_int_t month, mp_int_t mday,
    mp_int_t hours, mp_int_t minutes, mp_int_t seconds) {

    // Normalize the tuple. This allows things like:
    //
    // tm_tomorrow = list(time.localtime())
    // tm_tomorrow[2] += 1 # Adds 1 to mday
    // tomorrow = time.mktime(tm_tomorrow)
    //
    // And not have to worry about all the weird overflows.
    //
    // You can subtract dates/times this way as well.

    minutes += seconds / 60;
    if ((seconds = seconds % 60) < 0) {
        seconds += 60;
        minutes--;
    }

    hours += minutes / 60;
    if ((minutes = minutes % 60) < 0) {
        minutes += 60;
        hours--;
    }

    mday += hours / 24;
    if ((hours = hours % 24) < 0) {
        hours += 24;
        mday--;
    }

    month--; // make month zero based
    year += month / 12;
    if ((month = month % 12) < 0) {
        month += 12;
        year--;
    }
    month++; // back to one based

    while (mday < 1) {
        if (--month == 0) {
            month = 12;
            year--;
        }
        mday += FUNC0(year, month);
    }
    while ((mp_uint_t)mday > FUNC0(year, month)) {
        mday -= FUNC0(year, month);
        if (++month == 13) {
            month = 1;
            year++;
        }
    }
    return FUNC1(year, month, mday, hours, minutes, seconds);
}