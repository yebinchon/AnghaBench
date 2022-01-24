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
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  FUNC0 (short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC4()
{
	short		c;
	char	   *cur_locale;

	cur_locale = FUNC3(LC_ALL, "");
	if (cur_locale)
		FUNC1(stderr, "Successfully set locale to \"%s\"\n", cur_locale);
	else
	{
		FUNC1(stderr, "Cannot setup locale. Either your libc does not provide\nlocale support, or your locale data is corrupt, or you have not set\nLANG or LC_CTYPE environment variable to proper value. Program aborted.\n");
		return 1;
	}

	FUNC2("char#  char alnum alpha cntrl digit lower graph print punct space upper xdigit lo up\n");
	for (c = 0; c <= 255; c++)
		FUNC0(c);

	return 0;
}