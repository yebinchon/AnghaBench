#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* data; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 scalar_t__* ScanKeywordCategories ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ScanKeywords ; 
 scalar_t__ UNRESERVED_KEYWORD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ quote_all_identifiers ; 

const char *
FUNC4(const char *rawid)
{
	PQExpBuffer id_return = FUNC3();

	const char *cp;
	bool		need_quotes = false;

	/*
	 * These checks need to match the identifier production in scan.l. Don't
	 * use islower() etc.
	 */
	if (quote_all_identifiers)
		need_quotes = true;
	/* slightly different rules for first character */
	else if (!((rawid[0] >= 'a' && rawid[0] <= 'z') || rawid[0] == '_'))
		need_quotes = true;
	else
	{
		/* otherwise check the entire string */
		for (cp = rawid; *cp; cp++)
		{
			if (!((*cp >= 'a' && *cp <= 'z')
				  || (*cp >= '0' && *cp <= '9')
				  || (*cp == '_')))
			{
				need_quotes = true;
				break;
			}
		}
	}

	if (!need_quotes)
	{
		/*
		 * Check for keyword.  We quote keywords except for unreserved ones.
		 * (In some cases we could avoid quoting a col_name or type_func_name
		 * keyword, but it seems much harder than it's worth to tell that.)
		 *
		 * Note: ScanKeywordLookup() does case-insensitive comparison, but
		 * that's fine, since we already know we have all-lower-case.
		 */
		int			kwnum = FUNC0(rawid, &ScanKeywords);

		if (kwnum >= 0 && ScanKeywordCategories[kwnum] != UNRESERVED_KEYWORD)
			need_quotes = true;
	}

	if (!need_quotes)
	{
		/* no quoting needed */
		FUNC2(id_return, rawid);
	}
	else
	{
		FUNC1(id_return, '"');
		for (cp = rawid; *cp; cp++)
		{
			/*
			 * Did we find a double-quote in the string? Then make this a
			 * double double-quote per SQL99. Before, we put in a
			 * backslash/double-quote pair. - thomas 2000-08-05
			 */
			if (*cp == '"')
				FUNC1(id_return, '"');
			FUNC1(id_return, *cp);
		}
		FUNC1(id_return, '"');
	}

	return id_return->data;
}