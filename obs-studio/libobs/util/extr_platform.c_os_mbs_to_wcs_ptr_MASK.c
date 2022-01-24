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
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 size_t FUNC1 (char const*,size_t,int /*<<< orphan*/ *,size_t) ; 

size_t FUNC2(const char *str, size_t len, wchar_t **pstr)
{
	if (str) {
		size_t out_len = FUNC1(str, len, NULL, 0);

		*pstr = FUNC0((out_len + 1) * sizeof(wchar_t));
		return FUNC1(str, len, *pstr, out_len + 1);
	} else {
		*pstr = NULL;
		return 0;
	}
}