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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 

size_t FUNC3(const char *path, char *abspath, size_t size)
{
	wchar_t wpath[512];
	wchar_t wabspath[512];
	size_t out_len = 0;
	size_t len;

	if (!abspath)
		return 0;

	len = FUNC1(path, 0, wpath, 512);
	if (!len)
		return 0;

	if (FUNC0(wabspath, wpath, 512) != NULL)
		out_len = FUNC2(wabspath, 0, abspath, size);
	return out_len;
}