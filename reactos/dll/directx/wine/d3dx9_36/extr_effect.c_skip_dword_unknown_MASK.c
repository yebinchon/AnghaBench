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
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,unsigned int*) ; 

__attribute__((used)) static void FUNC2(const char **ptr, unsigned int count)
{
    unsigned int i;
    DWORD d;

    FUNC0("Skipping %u unknown DWORDs:\n", count);
    for (i = 0; i < count; ++i)
    {
        FUNC1(ptr, &d);
        FUNC0("\t0x%08x\n", d);
    }
}