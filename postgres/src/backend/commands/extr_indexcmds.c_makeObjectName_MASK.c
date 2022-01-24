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
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int FUNC5 (char const*) ; 

char *
FUNC6(const char *name1, const char *name2, const char *label)
{
	char	   *name;
	int			overhead = 0;	/* chars needed for label and underscores */
	int			availchars;		/* chars available for name(s) */
	int			name1chars;		/* chars allocated to name1 */
	int			name2chars;		/* chars allocated to name2 */
	int			ndx;

	name1chars = FUNC5(name1);
	if (name2)
	{
		name2chars = FUNC5(name2);
		overhead++;				/* allow for separating underscore */
	}
	else
		name2chars = 0;
	if (label)
		overhead += FUNC5(label) + 1;

	availchars = NAMEDATALEN - 1 - overhead;
	FUNC0(availchars > 0);		/* else caller chose a bad label */

	/*
	 * If we must truncate,  preferentially truncate the longer name. This
	 * logic could be expressed without a loop, but it's simple and obvious as
	 * a loop.
	 */
	while (name1chars + name2chars > availchars)
	{
		if (name1chars > name2chars)
			name1chars--;
		else
			name2chars--;
	}

	name1chars = FUNC3(name1, name1chars, name1chars);
	if (name2)
		name2chars = FUNC3(name2, name2chars, name2chars);

	/* Now construct the string using the chosen lengths */
	name = FUNC2(name1chars + name2chars + overhead + 1);
	FUNC1(name, name1, name1chars);
	ndx = name1chars;
	if (name2)
	{
		name[ndx++] = '_';
		FUNC1(name + ndx, name2, name2chars);
		ndx += name2chars;
	}
	if (label)
	{
		name[ndx++] = '_';
		FUNC4(name + ndx, label);
	}
	else
		name[ndx] = '\0';

	return name;
}