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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 

int FUNC6(int argc, wchar_t **argv, wchar_t **envp)
{
    wchar_t *cmd;
    wchar_t exe[MAX_PATH];

    cmd = FUNC0();
    FUNC1(NULL, exe, MAX_PATH);
    FUNC4(FUNC5(exe, '.') + 1, L"exe");

    // Set an environment variable so the child process can tell whether it
    // was started from this wrapper and attach to the console accordingly
    FUNC2(L"_started_from_console", L"yes");

    return FUNC3(exe, cmd);
}