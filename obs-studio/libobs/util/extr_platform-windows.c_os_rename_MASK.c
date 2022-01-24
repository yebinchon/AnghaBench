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
 int /*<<< orphan*/  MOVEFILE_REPLACE_EXISTING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int FUNC3(const char *old_path, const char *new_path)
{
	wchar_t *old_path_utf16 = NULL;
	wchar_t *new_path_utf16 = NULL;
	int code = -1;

	if (!FUNC2(old_path, 0, &old_path_utf16)) {
		return -1;
	}
	if (!FUNC2(new_path, 0, &new_path_utf16)) {
		goto error;
	}

	code = FUNC0(old_path_utf16, new_path_utf16,
			   MOVEFILE_REPLACE_EXISTING)
		       ? 0
		       : -1;

error:
	FUNC1(old_path_utf16);
	FUNC1(new_path_utf16);
	return code;
}