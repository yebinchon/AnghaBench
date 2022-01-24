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
typedef  size_t mp_uint_t ;

/* Variables and functions */
 size_t* days_since_jan1 ; 
 scalar_t__ FUNC0 (size_t) ; 

mp_uint_t FUNC1(mp_uint_t year, mp_uint_t month) {
    mp_uint_t mdays = days_since_jan1[month] - days_since_jan1[month - 1];
    if (month == 2 && FUNC0(year)) {
        mdays++;
    }
    return mdays;
}