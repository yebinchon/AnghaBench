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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_HELP_CMD_LIST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

BOOL
FUNC6(
    INT argc,
    LPWSTR *argv)
{
    /* gets the first word from the string */
    if (argc == 1)
    {
        FUNC0(StdOut, IDS_HELP_CMD_LIST);
        return TRUE;
    }

    /* determines which to list (disk, partition, etc.) */
    if (!FUNC5(argv[1], L"disk"))
        FUNC1();
    else if (!FUNC5(argv[1], L"partition"))
        FUNC2();
    else if (!FUNC5(argv[1], L"volume"))
        FUNC4();
    else if (!FUNC5(argv[1], L"vdisk"))
        FUNC3();
    else
        FUNC0(StdOut, IDS_HELP_CMD_LIST);

    return TRUE;
}