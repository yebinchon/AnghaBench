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
 scalar_t__ err ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1(void)
{
    FUNC0("SORT\n", stderr);
    FUNC0("Sorts input and writes output to a file, console or a device.\n",
          stderr);

    if (err)
    {
        FUNC0("Invalid parameter\n", stderr);
    }

    FUNC0("    SORT [options] < [drive:1][path1]file1 > [drive2:][path2]file2\n",
          stderr);

    FUNC0("    Command | SORT [options] > [drive:][path]file\n", stderr);
    FUNC0("    Options:\n", stderr);
    FUNC0("    /R   Reverse order\n", stderr);
    FUNC0("    /+n  Start sorting with column n\n", stderr);
    FUNC0("    /?   Help\n", stderr);
}