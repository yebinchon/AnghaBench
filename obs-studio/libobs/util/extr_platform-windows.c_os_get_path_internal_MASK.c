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
 int MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC2 (char*,size_t,char const*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(char *dst, size_t size, const char *name,
				int folder)
{
	wchar_t path_utf16[MAX_PATH];

	FUNC0(NULL, folder, NULL, SHGFP_TYPE_CURRENT, path_utf16);

	if (FUNC1(path_utf16, 0, dst, size) != 0) {
		if (!name || !*name) {
			return (int)FUNC3(dst);
		}

		if (FUNC2(dst, size, "\\") == 0) {
			if (FUNC2(dst, size, name) == 0) {
				return (int)FUNC3(dst);
			}
		}
	}

	return -1;
}