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
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int FUNC5(const char *target, const char *from, const char *backup)
{
	wchar_t *wtarget = NULL;
	wchar_t *wfrom = NULL;
	wchar_t *wbackup = NULL;
	int code = -1;

	if (!target || !from)
		return -1;
	if (!FUNC4(target, 0, &wtarget))
		return -1;
	if (!FUNC4(from, 0, &wfrom))
		goto fail;
	if (backup && !FUNC4(backup, 0, &wbackup))
		goto fail;

	if (FUNC2(wtarget, wfrom, wbackup, 0, NULL, NULL)) {
		code = 0;
	} else if (FUNC0() == ERROR_FILE_NOT_FOUND) {
		code = FUNC1(wfrom, wtarget, MOVEFILE_REPLACE_EXISTING)
			       ? 0
			       : -1;
	}

fail:
	FUNC3(wtarget);
	FUNC3(wfrom);
	FUNC3(wbackup);
	return code;
}