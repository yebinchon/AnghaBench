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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 

int FUNC6(int argc, char *argv[])
{
    if (argc < 3)
    {
        FUNC5(FUNC4("syntax: install x: [fs_type]\nwhere fs_type is fat or fat32\n"));
        return -1;
    }

    if (!FUNC3(argv[1]))
    {
        return -1;
    }

    FUNC0(argv[1]);

    FUNC2(argv[2]);

    FUNC5(FUNC4("You must now copy freeldr.sys & freeldr.ini to %s.\n"), argv[1]);

    FUNC1();

    return 0;
}