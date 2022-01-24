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
 scalar_t__* ScanKeywordCategories ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ScanKeywords ; 
 scalar_t__ UNRESERVED_KEYWORD ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ quote_all_identifiers ; 
 scalar_t__ FUNC2 (char const*) ; 

const char *
FUNC3(const char *ident)
{
	/*
	 * Can avoid quoting if ident starts with a lowercase letter or underscore
	 * and contains only lowercase letters, digits, and underscores, *and* is
	 * not any SQL keyword.  Otherwise, supply quotes.
	 */
	int			nquotes = 0;
	bool		safe;
	const char *ptr;
	char	   *result;
	char	   *optr;

	/*
	 * would like to use <ctype.h> macros here, but they might yield unwanted
	 * locale-specific results...
	 */
	safe = ((ident[0] >= 'a' && ident[0] <= 'z') || ident[0] == '_');

	for (ptr = ident; *ptr; ptr++)
	{
		char		ch = *ptr;

		if ((ch >= 'a' && ch <= 'z') ||
			(ch >= '0' && ch <= '9') ||
			(ch == '_'))
		{
			/* okay */
		}
		else
		{
			safe = false;
			if (ch == '"')
				nquotes++;
		}
	}

	if (quote_all_identifiers)
		safe = false;

	if (safe)
	{
		/*
		 * Check for keyword.  We quote keywords except for unreserved ones.
		 * (In some cases we could avoid quoting a col_name or type_func_name
		 * keyword, but it seems much harder than it's worth to tell that.)
		 *
		 * Note: ScanKeywordLookup() does case-insensitive comparison, but
		 * that's fine, since we already know we have all-lower-case.
		 */
		int			kwnum = FUNC0(ident, &ScanKeywords);

		if (kwnum >= 0 && ScanKeywordCategories[kwnum] != UNRESERVED_KEYWORD)
			safe = false;
	}

	if (safe)
		return ident;			/* no change needed */

	result = (char *) FUNC1(FUNC2(ident) + nquotes + 2 + 1);

	optr = result;
	*optr++ = '"';
	for (ptr = ident; *ptr; ptr++)
	{
		char		ch = *ptr;

		if (ch == '"')
			*optr++ = '"';
		*optr++ = ch;
	}
	*optr++ = '"';
	*optr = '\0';

	return result;
}