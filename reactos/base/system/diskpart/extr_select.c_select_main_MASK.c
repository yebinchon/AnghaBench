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
 int /*<<< orphan*/  IDS_HELP_CMD_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

BOOL
FUNC4(
    INT argc,
    LPWSTR *argv)
{
    /* gets the first word from the string */
    if (argc == 1)
    {
        FUNC0(StdOut, IDS_HELP_CMD_SELECT);
        return TRUE;
    }

    /* determines which to list (disk, partition, etc.) */
    if (!FUNC3(argv[1], L"disk"))
        FUNC1(argc, argv);
    else if (!FUNC3(argv[1], L"partition"))
        FUNC2(argc, argv);
    else
        FUNC0(StdOut, IDS_HELP_CMD_SELECT);

    return TRUE;
}