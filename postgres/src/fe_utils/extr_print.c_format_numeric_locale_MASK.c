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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 char* decimal_point ; 
 int groupdigits ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int FUNC7 (char const*,char*) ; 
 char* thousands_sep ; 

__attribute__((used)) static char *
FUNC8(const char *my_str)
{
	char	   *new_str;
	int			new_len,
				int_len,
				leading_digits,
				i,
				new_str_pos;

	/*
	 * If the string doesn't look like a number, return it unchanged.  This
	 * check is essential to avoid mangling already-localized "money" values.
	 */
	if (FUNC7(my_str, "0123456789+-.eE") != FUNC6(my_str))
		return FUNC4(my_str);

	new_len = FUNC6(my_str) + FUNC1(my_str);
	new_str = FUNC3(new_len + 1);
	new_str_pos = 0;
	int_len = FUNC2(my_str);

	/* number of digits in first thousands group */
	leading_digits = int_len % groupdigits;
	if (leading_digits == 0)
		leading_digits = groupdigits;

	/* process sign */
	if (my_str[0] == '-' || my_str[0] == '+')
	{
		new_str[new_str_pos++] = my_str[0];
		my_str++;
	}

	/* process integer part of number */
	for (i = 0; i < int_len; i++)
	{
		/* Time to insert separator? */
		if (i > 0 && --leading_digits == 0)
		{
			FUNC5(&new_str[new_str_pos], thousands_sep);
			new_str_pos += FUNC6(thousands_sep);
			leading_digits = groupdigits;
		}
		new_str[new_str_pos++] = my_str[i];
	}

	/* handle decimal point if any */
	if (my_str[i] == '.')
	{
		FUNC5(&new_str[new_str_pos], decimal_point);
		new_str_pos += FUNC6(decimal_point);
		i++;
	}

	/* copy the rest (fractional digits and/or exponent, and \0 terminator) */
	FUNC5(&new_str[new_str_pos], &my_str[i]);

	/* assert we didn't underestimate new_len (an overestimate is OK) */
	FUNC0(FUNC6(new_str) <= new_len);

	return new_str;
}