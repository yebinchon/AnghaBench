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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

const char *
FUNC3(const char *ifname)
{
    if (FUNC2(ifname)) {
        const char *new_adapter_name;

        new_adapter_name = FUNC0(FUNC1(ifname));
        if (new_adapter_name)
            return new_adapter_name;
    }

    return ifname;
}