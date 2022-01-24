#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int cb; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  wShowWindow; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int MAX_PATH ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STARTF_USESHOWWINDOW ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  SecurityIdentification ; 
 int /*<<< orphan*/  TOKEN_ALL_ACCESS ; 
 int TOKEN_DUPLICATE ; 
 int TOKEN_QUERY ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TokenPrimary ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

BOOL FUNC10(LPCWSTR lpProcessName)
{
    STARTUPINFOW si;
    PROCESS_INFORMATION pi;
    HANDLE hUserToken, hProcessToken;
    BOOL bSuccess;
    WCHAR ExpandedCmdLine[MAX_PATH];

    /* Expand the process path string */
    FUNC5(lpProcessName, ExpandedCmdLine, FUNC0(ExpandedCmdLine));

    FUNC9(&pi, sizeof(pi));
    FUNC9(&si, sizeof(si));
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESHOWWINDOW;
    si.wShowWindow = SW_SHOWNORMAL;

    /* Get the token of the parent (current) process of the application */
    bSuccess = FUNC8(FUNC6(), TOKEN_QUERY | TOKEN_DUPLICATE, &hUserToken);
    if (!bSuccess)
    {
        FUNC3("OpenProcessToken() failed with error -> %lu\n", FUNC7());
        return FALSE;
    }

    /* Duplicate a new token so that we can use it to create our process */
    bSuccess = FUNC4(hUserToken, TOKEN_ALL_ACCESS, NULL, SecurityIdentification, TokenPrimary, &hProcessToken);
    if (!bSuccess)
    {
        FUNC3("DuplicateTokenEx() failed with error -> %lu\n", FUNC7());
        FUNC1(hUserToken);
        return FALSE;
    }

    /* Finally create the process */
    bSuccess = FUNC2(hProcessToken,
                                    NULL,
                                    ExpandedCmdLine,
                                    NULL,
                                    NULL,
                                    FALSE,
                                    0, // DETACHED_PROCESS, NORMAL_PRIORITY_CLASS
                                    NULL,
                                    NULL,
                                    &si,
                                    &pi);

    if (!bSuccess)
    {
        FUNC3("CreateProcessAsUserW() failed with error -> %lu\n", FUNC7());
        FUNC1(hUserToken);
        FUNC1(hProcessToken);
        return FALSE;
    }

    FUNC1(pi.hProcess);
    FUNC1(pi.hThread);
    FUNC1(hUserToken);
    FUNC1(hProcessToken);
    return TRUE;
}