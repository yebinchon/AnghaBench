#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int (* func ) (int,int /*<<< orphan*/ **) ;scalar_t__ name; } ;
typedef  TYPE_1__* PCOMMAND ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MSG_NET_SYNTAX ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* cmds ; 
 int /*<<< orphan*/ * hModuleNetMsg ; 
 int FUNC10 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 

int FUNC12(int argc, WCHAR **argv)
{
    WCHAR szDllBuffer[MAX_PATH];
    PCOMMAND cmdptr;
    int nResult = 0;
    BOOL bRun = FALSE;

    /* Initialize the Console Standard Streams */
    FUNC1();

    /* Load netmsg.dll */
    FUNC5(szDllBuffer, FUNC0(szDllBuffer));
    FUNC11(szDllBuffer, L"\\netmsg.dll");

    hModuleNetMsg = FUNC6(szDllBuffer);
    if (hModuleNetMsg == NULL)
    {
        FUNC2(StdErr, L"Failed to load netmsg.dll\n");
        return 1;
    }

    if (argc < 2)
    {
        nResult = 1;
        goto done;
    }

    /* Scan the command table */
    for (cmdptr = cmds; cmdptr->name; cmdptr++)
    {
        if (FUNC9(argv[1], cmdptr->name) == 0)
        {
            nResult = cmdptr->func(argc, argv);
            bRun = TRUE;
            break;
        }
    }

done:
    if (bRun == FALSE)
    {
        FUNC7(4381);
        FUNC3(StdOut, L"\n");
        FUNC8(MSG_NET_SYNTAX);
    }

    if (hModuleNetMsg != NULL)
        FUNC4(hModuleNetMsg);

    return nResult;
}