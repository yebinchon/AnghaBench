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
 double NAN ; 
 double FUNC0 (double) ; 

__attribute__((used)) static inline DOUBLE FUNC1(DOUBLE time)
{
    if(8.64e15 < time || time < -8.64e15) {
        return NAN;
    }

    return FUNC0(time);
}