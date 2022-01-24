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
 scalar_t__ FUNC0 (char const*,char*,int) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

int
FUNC2(const char *lhs, const char *rhs)
{
    if (FUNC0(lhs, "\\Device\\NPF_", 12) == 0)
        lhs += 12;
    if (FUNC0(rhs, "\\Device\\NPF_", 12) == 0)
        rhs += 12;
    return FUNC1(lhs, rhs) == 0;
}