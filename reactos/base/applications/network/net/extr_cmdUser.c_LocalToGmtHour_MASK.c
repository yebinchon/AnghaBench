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
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ UNITS_PER_WEEK ; 

__attribute__((used)) static
DWORD
FUNC0(
    LONG lLocalHour,
    LONG lBias)
{
    LONG lGmtHour;

    lGmtHour = lLocalHour + lBias;
    if (lGmtHour < 0)
        lGmtHour += UNITS_PER_WEEK;
    else if (lGmtHour > UNITS_PER_WEEK)
        lGmtHour -= UNITS_PER_WEEK;

    return (DWORD)lGmtHour;
}