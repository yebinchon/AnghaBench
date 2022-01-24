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
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_INPUT ; 
 int CMDLINE_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 
 int /*<<< orphan*/  STRING_MORE ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC7 (char) ; 
 scalar_t__ bEcho ; 
 int /*<<< orphan*/  bExit ; 
 int /*<<< orphan*/  bIgnoreEcho ; 
 int /*<<< orphan*/ * bc ; 

BOOL
FUNC8(TCHAR *commandline, BOOL bMore)
{
    TCHAR readline[CMDLINE_LENGTH];
    LPTSTR ip;

    /* if no batch input then... */
    if (bc == NULL)
    {
        if (bMore)
        {
            FUNC2(STRING_MORE);
        }
        else
        {
            /* JPP 19980807 - if echo off, don't print prompt */
            if (bEcho)
            {
                if (!bIgnoreEcho)
                    FUNC1(FUNC7('\n'));
                FUNC3();
            }
        }

        if (!FUNC5(readline, CMDLINE_LENGTH - 1))
        {
            bExit = TRUE;
            return FALSE;
        }

        if (readline[0] == FUNC7('\0'))
            FUNC1(FUNC7('\n'));

        if (FUNC0(BREAK_INPUT))
            return FALSE;

        if (readline[0] == FUNC7('\0'))
            return FALSE;

        ip = readline;
    }
    else
    {
        ip = FUNC4();
        if (!ip)
            return FALSE;
    }

    return FUNC6(ip, commandline, FUNC7('%'));
}