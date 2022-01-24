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
 int /*<<< orphan*/  ERRCODE_NAME_TOO_LONG ; 
 int /*<<< orphan*/  ERROR ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 scalar_t__ FUNC6 (unsigned char) ; 

__attribute__((used)) static const char *
FUNC7(const char *s, char *n)
{
	int			len = 0;
	bool		in_quotes = false;

	FUNC0(s && n);

	while (FUNC6((unsigned char) *s))
		s++;
	/* This code had better match what putid() does, below */
	for (;
		 *s != '\0' &&
		 (FUNC5((unsigned char) *s) ||
		  *s == '_' ||
		  *s == '"' ||
		  in_quotes);
		 s++)
	{
		if (*s == '"')
		{
			/* safe to look at next char (could be '\0' though) */
			if (*(s + 1) != '"')
			{
				in_quotes = !in_quotes;
				continue;
			}
			/* it's an escaped double quote; skip the escaping char */
			s++;
		}

		/* Add the character to the string */
		if (len >= NAMEDATALEN - 1)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_NAME_TOO_LONG),
					 FUNC4("identifier too long"),
					 FUNC3("Identifier must be less than %d characters.",
							   NAMEDATALEN)));

		n[len++] = *s;
	}
	n[len] = '\0';
	while (FUNC6((unsigned char) *s))
		s++;
	return s;
}