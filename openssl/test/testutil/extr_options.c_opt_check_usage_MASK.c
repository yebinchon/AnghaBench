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
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int FUNC1 () ; 
 char** FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 scalar_t__* used ; 

void FUNC4(void)
{
    int i;
    char **argv = FUNC2();
    int n, arg_count = FUNC1();

    if (arg_count > (int)FUNC0(used))
        n = (int)FUNC0(used);
    else
        n = arg_count;
    for (i = 0; i < n; i++) {
        if (used[i] == 0)
            FUNC3("Warning ignored command-line argument %d: %s\n",
                               i, argv[i]);
    }
    if (i < arg_count)
        FUNC3("Warning arguments %d and later unchecked\n", i);
}