#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_6__ {int cb; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  PARSED_COMMAND ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int CMDLINE_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HANDLE
FUNC12(PARSED_COMMAND *Cmd)
{
    TCHAR CmdPath[MAX_PATH];
    TCHAR CmdParams[CMDLINE_LENGTH], *ParamsEnd;
    STARTUPINFO stui;
    PROCESS_INFORMATION prci;

    /* Get the path to cmd.exe */
    FUNC5(NULL, CmdPath, FUNC0(CmdPath));

    /* Build the parameter string to pass to cmd.exe */
    ParamsEnd = FUNC8(CmdParams, FUNC7("/S/D/C\""));
    ParamsEnd = FUNC6(Cmd, ParamsEnd, &CmdParams[CMDLINE_LENGTH - 2]);
    if (!ParamsEnd)
    {
        FUNC10();
        return NULL;
    }
    FUNC9(ParamsEnd, FUNC7("\""));

    FUNC11(&stui, 0, sizeof stui);
    stui.cb = sizeof(STARTUPINFO);
    if (!FUNC2(CmdPath, CmdParams, NULL, NULL, TRUE, 0,
                       NULL, NULL, &stui, &prci))
    {
        FUNC3(FUNC4(), NULL);
        return NULL;
    }

    FUNC1(prci.hThread);
    return prci.hProcess;
}