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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char const*,size_t,int /*<<< orphan*/ **) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t,char**) ; 

size_t FUNC3(const char *str, size_t len, char **pstr)
{
	char *dst = NULL;
	size_t out_len = 0;

	if (str) {
		wchar_t *wstr = NULL;
		size_t wlen = FUNC1(str, len, &wstr);
		out_len = FUNC2(wstr, wlen, &dst);
		FUNC0(wstr);
	}
	*pstr = dst;

	return out_len;
}