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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,char**) ; 

FILE *FUNC5(const wchar_t *path, const char *mode)
{
	FILE *file = NULL;

	if (path) {
#ifdef _MSC_VER
		wchar_t *wcs_mode;

		os_utf8_to_wcs_ptr(mode, 0, &wcs_mode);
		file = _wfopen(path, wcs_mode);
		bfree(wcs_mode);
#else
		char *mbs_path;

		FUNC4(path, 0, &mbs_path);
		file = FUNC2(mbs_path, mode);
		FUNC1(mbs_path);
#endif
	}

	return file;
}