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

/* Variables and functions */
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 

size_t
FUNC2(const size_t m1, const size_t m2, const size_t extra)
{
    const size_t limit = 0xFFFFFFFF;
    unsigned long long res = (unsigned long long)m1 * (unsigned long long)m2 + (unsigned long long)extra;
    if (FUNC1(m1 > limit) || FUNC1(m2 > limit) || FUNC1(extra > limit) || FUNC1(res > (unsigned long long)limit))
    {
        FUNC0(M_FATAL, "attempted allocation of excessively large array");
    }
    return (size_t) res;
}