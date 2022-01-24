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
struct stat {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct stat* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int FUNC3 (char const*,struct stat* const) ; 

__attribute__((used)) static int FUNC4 (const char *file, struct stat* const pStat) {
	if (!file || !pStat) {
		return -1;
	}
#if __WINDOWS__
	wchar_t *wfile = r_utf8_to_utf16 (file);
	if (!wfile) {
		return -1;
	}
	int ret = _wstat (wfile, pStat);
	free (wfile);
	return ret;
#else // __WINDOWS__
	return FUNC3 (file, pStat);
#endif // __WINDOWS__
}