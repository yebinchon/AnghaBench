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
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int INJECT_ERROR_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  SEM_FAILCRITICALERRORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC9 (scalar_t__*,char) ; 

int FUNC10(int argc, char *argv_ansi[])
{
	wchar_t dll_path[MAX_PATH];
	LPWSTR pCommandLineW;
	LPWSTR *argv;
	int ret = INJECT_ERROR_INVALID_PARAMS;

	FUNC4(SEM_FAILCRITICALERRORS);
	FUNC7();

	pCommandLineW = FUNC1();
	argv = FUNC0(pCommandLineW, &argc);
	if (argv && argc == 4) {
		DWORD size = FUNC2(NULL, dll_path, MAX_PATH);
		if (size) {
			wchar_t *name_start = FUNC9(dll_path, '\\');
			if (name_start) {
				*(++name_start) = 0;
				FUNC8(name_start, argv[1]);
				ret = FUNC6(argv, dll_path);
			}
		}
	}
	FUNC3(argv);

	FUNC5(argv_ansi);
	return ret;
}