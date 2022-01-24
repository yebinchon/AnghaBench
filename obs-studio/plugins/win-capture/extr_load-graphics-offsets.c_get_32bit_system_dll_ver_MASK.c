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
typedef  char wchar_t ;
struct win_version_info {int dummy; } ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct win_version_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static bool FUNC6(const wchar_t *system_lib,
				     struct win_version_info *ver)
{
	wchar_t path[MAX_PATH];
	UINT ret;

#ifdef _WIN64
	ret = GetSystemWow64DirectoryW(path, MAX_PATH);
#else
	ret = FUNC1(path, MAX_PATH);
#endif
	if (!ret) {
		FUNC3(LOG_ERROR,
		     "Failed to get windows 32bit system path: "
		     "%lu",
		     FUNC0());
		return false;
	}

	FUNC5(path, L"\\");
	FUNC5(path, system_lib);
	return FUNC4(path, ver);
}