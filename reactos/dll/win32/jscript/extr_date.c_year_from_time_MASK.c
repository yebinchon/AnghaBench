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
typedef  double DOUBLE ;

/* Variables and functions */
 double MS_PER_DAY ; 
 double NAN ; 
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (int) ; 

__attribute__((used)) static inline DOUBLE FUNC2(DOUBLE time)
{
    int y;

    if(FUNC0(time))
        return NAN;

    y = 1970 + time/365.25/MS_PER_DAY;

    if(FUNC1(y) > time)
        while(FUNC1(y) > time) y--;
    else
        while(FUNC1(y+1)<=time) y++;

    return y;
}