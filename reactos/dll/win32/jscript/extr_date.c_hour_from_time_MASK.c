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
typedef  scalar_t__ DOUBLE ;

/* Variables and functions */
 scalar_t__ MS_PER_HOUR ; 
 scalar_t__ NAN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static inline DOUBLE FUNC3(DOUBLE time)
{
    DOUBLE ret;

    if(FUNC2(time))
        return NAN;

    ret = FUNC1(FUNC0(time/MS_PER_HOUR), 24);
    if(ret<0) ret += 24;

    return ret;
}