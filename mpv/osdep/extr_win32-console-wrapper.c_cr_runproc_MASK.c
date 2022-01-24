#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  si ;
typedef  int /*<<< orphan*/  pi ;
typedef  int /*<<< orphan*/  our_si ;
struct TYPE_7__ {int cb; int /*<<< orphan*/  hThread; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  cbReserved2; int /*<<< orphan*/  lpReserved2; int /*<<< orphan*/  dwFlags; void* hStdError; void* hStdOutput; void* hStdInput; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  STARTF_USESTDHANDLES ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(wchar_t *name, wchar_t *cmdline)
{
    STARTUPINFOW si;
    STARTUPINFOW our_si;
    PROCESS_INFORMATION pi;
    DWORD retval = 1;

    FUNC6(&si, sizeof(si));
    si.cb = sizeof(si);
    si.hStdInput = FUNC4(STD_INPUT_HANDLE);
    si.hStdOutput = FUNC4(STD_OUTPUT_HANDLE);
    si.hStdError = FUNC4(STD_ERROR_HANDLE);
    si.dwFlags |= STARTF_USESTDHANDLES;

    // Copy the list of inherited CRT file descriptors to the new process
    our_si.cb = sizeof(our_si);
    FUNC3(&our_si);
    si.lpReserved2 = our_si.lpReserved2;
    si.cbReserved2 = our_si.cbReserved2;

    FUNC6(&pi, sizeof(pi));

    if (!FUNC1(name, cmdline, NULL, NULL, TRUE, 0,
                        NULL, NULL, &si, &pi)) {

        FUNC7(L"CreateProcess");
    } else {
        FUNC5(pi.hProcess, INFINITE);
        FUNC2(pi.hProcess, &retval);
        FUNC0(pi.hProcess);
        FUNC0(pi.hThread);
    }

    return (int)retval;
}