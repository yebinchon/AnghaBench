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

/* Variables and functions */
 int MAX_COPY_DATA_DISPLAY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char const*,int,int) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static char *
FUNC6(const char *str)
{
#define MAX_COPY_DATA_DISPLAY 100

	int			slen = FUNC5(str);
	int			len;
	char	   *res;

	/* Fast path if definitely okay */
	if (slen <= MAX_COPY_DATA_DISPLAY)
		return FUNC3(str);

	/* Apply encoding-dependent truncation */
	len = FUNC2(str, slen, MAX_COPY_DATA_DISPLAY);

	/*
	 * Truncate, and add "..." to show we truncated the input.
	 */
	res = (char *) FUNC1(len + 4);
	FUNC0(res, str, len);
	FUNC4(res + len, "...");

	return res;
}