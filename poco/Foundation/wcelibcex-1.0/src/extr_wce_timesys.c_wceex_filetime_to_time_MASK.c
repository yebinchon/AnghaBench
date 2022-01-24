#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_6__ {int /*<<< orphan*/  dwHighDateTime; int /*<<< orphan*/  dwLowDateTime; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_1__ FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

time_t FUNC3(const FILETIME * pft)
{
    SYSTEMTIME st;
    FILETIME lft;

    /* File time as 0 value cannot be represented as Epoch time. */

    if (!pft->dwLowDateTime && !pft->dwHighDateTime)
    {
        return (time_t)-1;
    }

    /* Convert to a broken down local time value */
    if (!FUNC0(pft, &lft) ||
        !FUNC1(&lft, &st))
    {
        return (time_t)-1;
    }

    return FUNC2(&st);
}