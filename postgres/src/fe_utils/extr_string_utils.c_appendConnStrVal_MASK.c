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
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC2(PQExpBuffer buf, const char *str)
{
	const char *s;
	bool		needquotes;

	/*
	 * If the string is one or more plain ASCII characters, no need to quote
	 * it. This is quite conservative, but better safe than sorry.
	 */
	needquotes = true;
	for (s = str; *s; s++)
	{
		if (!((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') ||
			  (*s >= '0' && *s <= '9') || *s == '_' || *s == '.'))
		{
			needquotes = true;
			break;
		}
		needquotes = false;
	}

	if (needquotes)
	{
		FUNC0(buf, '\'');
		while (*str)
		{
			/* ' and \ must be escaped by to \' and \\ */
			if (*str == '\'' || *str == '\\')
				FUNC0(buf, '\\');

			FUNC0(buf, *str);
			str++;
		}
		FUNC0(buf, '\'');
	}
	else
		FUNC1(buf, str);
}