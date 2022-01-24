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
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  number_of_cpus ; 
 scalar_t__ system_pagesize ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4()
{
    system_pagesize = FUNC2();
    if (system_pagesize <= 0) {
        FUNC1("FREEBSD: can't get system page size");
        return 1;
    }

    if (FUNC3(FUNC0("kern.smp.cpus", number_of_cpus))) {
        FUNC1("FREEBSD: can't get number of cpus");
        return 1;
    }

    if (FUNC3(!number_of_cpus)) {
        FUNC1("FREEBSD: wrong number of cpus");
        return 1;
    }

    return 0;
}