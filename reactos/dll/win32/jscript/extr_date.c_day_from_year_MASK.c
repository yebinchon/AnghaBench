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
typedef  int DOUBLE ;

/* Variables and functions */
 int NAN ; 
 int FUNC0 (double) ; 

__attribute__((used)) static inline DOUBLE FUNC1(DOUBLE year)
{
    if(year != (int)year)
        return NAN;

    return FUNC0(365.0*(year-1970) + FUNC0((year-1969)/4)
        - FUNC0((year-1901)/100) + FUNC0((year-1601)/400));
}