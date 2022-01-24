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
 unsigned int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__* typeinfo ; 
 scalar_t__ typelib ; 

void FUNC3(void)
{
    unsigned i;

    for (i = 0; i < FUNC0(typeinfo); i++)
        if (typeinfo[i])
            FUNC1(typeinfo[i]);

    if (typelib)
        FUNC2(typelib);
}