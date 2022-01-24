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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ALREADY_EXISTS ; 
 scalar_t__ FUNC1 () ; 
 int MKDIR_ERROR ; 
 int MKDIR_EXISTS ; 
 int MKDIR_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int FUNC4(const char *path)
{
	wchar_t *path_utf16;
	BOOL success;

	if (!FUNC3(path, 0, &path_utf16))
		return MKDIR_ERROR;

	success = FUNC0(path_utf16, NULL);
	FUNC2(path_utf16);

	if (!success)
		return (FUNC1() == ERROR_ALREADY_EXISTS) ? MKDIR_EXISTS
								: MKDIR_ERROR;

	return MKDIR_SUCCESS;
}