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
 int /*<<< orphan*/  decimal_point ; 
 int groupdigits ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thousands_sep ; 

__attribute__((used)) static int
FUNC3(const char *my_str)
{
	int			int_len = FUNC0(my_str),
				len = 0;

	/* Account for added thousands_sep instances */
	if (int_len > groupdigits)
		len += ((int_len - 1) / groupdigits) * FUNC2(thousands_sep);

	/* Account for possible additional length of decimal_point */
	if (FUNC1(my_str, '.') != NULL)
		len += FUNC2(decimal_point) - 1;

	return len;
}