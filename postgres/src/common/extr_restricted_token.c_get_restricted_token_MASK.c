#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pi ;
struct TYPE_4__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * restrict_env ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 

void
FUNC13(void)
{
#ifdef WIN32
	HANDLE		restrictedToken;

	/*
	 * Before we execute another program, make sure that we are running with a
	 * restricted token. If not, re-execute ourselves with one.
	 */

	if ((restrict_env = getenv("PG_RESTRICT_EXEC")) == NULL
		|| strcmp(restrict_env, "1") != 0)
	{
		PROCESS_INFORMATION pi;
		char	   *cmdline;

		ZeroMemory(&pi, sizeof(pi));

		cmdline = pg_strdup(GetCommandLine());

		putenv("PG_RESTRICT_EXEC=1");

		if ((restrictedToken = CreateRestrictedProcess(cmdline, &pi)) == 0)
		{
			pg_log_error("could not re-execute with restricted token: error code %lu", GetLastError());
		}
		else
		{
			/*
			 * Successfully re-execed. Now wait for child process to capture
			 * exitcode.
			 */
			DWORD		x;

			CloseHandle(restrictedToken);
			CloseHandle(pi.hThread);
			WaitForSingleObject(pi.hProcess, INFINITE);

			if (!GetExitCodeProcess(pi.hProcess, &x))
			{
				pg_log_error("could not get exit code from subprocess: error code %lu", GetLastError());
				exit(1);
			}
			exit(x);
		}
	}
#endif
}