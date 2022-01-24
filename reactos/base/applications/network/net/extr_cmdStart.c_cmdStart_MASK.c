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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  MSG_START_HELP ; 
 int /*<<< orphan*/  MSG_START_SYNTAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

INT
FUNC6(INT argc, WCHAR **argv)
{
    INT i;

    if (argc == 2)
    {
        return FUNC1();
    }

    for (i = 2; i < argc; i++)
    {
        if (FUNC5(argv[i], L"/help") == 0)
        {
            FUNC2(4381);
            FUNC0(StdOut, L"\n");
            FUNC3(MSG_START_SYNTAX);
            FUNC3(MSG_START_HELP);
            return 1;
        }
    }

    return FUNC4(argc, argv);
}