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
struct mach_timebase_info {scalar_t__ denom; scalar_t__ numer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mach_timebase_info*) ; 
 double timebase_ratio ; 

void FUNC1(void)
{
    struct mach_timebase_info timebase;

    FUNC0(&timebase);
    timebase_ratio = (double)timebase.numer / (double)timebase.denom * 1e-9;
}