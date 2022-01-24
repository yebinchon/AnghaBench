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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 unsigned int FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char,char,int) ; 
 int FUNC8 (char const*) ; 
 unsigned int FUNC9 (char*,char const*) ; 

char *
FUNC10(const char *s,
		const char *whitespace,
		const char *delim,
		const char *quote,
		char escape,
		bool e_strings,
		bool del_quotes,
		int encoding)
{
	static char *storage = NULL;	/* store the local copy of the users
									 * string here */
	static char *string = NULL; /* pointer into storage where to continue on
								 * next call */

	/* variously abused variables: */
	unsigned int offset;
	char	   *start;
	char	   *p;

	if (s)
	{
		FUNC1(storage);

		/*
		 * We may need extra space to insert delimiter nulls for adjacent
		 * tokens.  2X the space is a gross overestimate, but it's unlikely
		 * that this code will be used on huge strings anyway.
		 */
		storage = FUNC3(2 * FUNC8(s) + 1);
		FUNC5(storage, s);
		string = storage;
	}

	if (!storage)
		return NULL;

	/* skip leading whitespace */
	offset = FUNC9(string, whitespace);
	start = &string[offset];

	/* end of string reached? */
	if (*start == '\0')
	{
		/* technically we don't need to free here, but we're nice */
		FUNC1(storage);
		storage = NULL;
		string = NULL;
		return NULL;
	}

	/* test if delimiter character */
	if (delim && FUNC4(delim, *start))
	{
		/*
		 * If not at end of string, we need to insert a null to terminate the
		 * returned token.  We can just overwrite the next character if it
		 * happens to be in the whitespace set ... otherwise move over the
		 * rest of the string to make room.  (This is why we allocated extra
		 * space above).
		 */
		p = start + 1;
		if (*p != '\0')
		{
			if (!FUNC4(whitespace, *p))
				FUNC2(p + 1, p, FUNC8(p) + 1);
			*p = '\0';
			string = p + 1;
		}
		else
		{
			/* at end of string, so no extra work */
			string = p;
		}

		return start;
	}

	/* check for E string */
	p = start;
	if (e_strings &&
		(*p == 'E' || *p == 'e') &&
		p[1] == '\'')
	{
		quote = "'";
		escape = '\\';			/* if std strings before, not any more */
		p++;
	}

	/* test if quoting character */
	if (quote && FUNC4(quote, *p))
	{
		/* okay, we have a quoted token, now scan for the closer */
		char		thisquote = *p++;

		for (; *p; p += FUNC0(p, encoding))
		{
			if (*p == escape && p[1] != '\0')
				p++;			/* process escaped anything */
			else if (*p == thisquote && p[1] == thisquote)
				p++;			/* process doubled quote */
			else if (*p == thisquote)
			{
				p++;			/* skip trailing quote */
				break;
			}
		}

		/*
		 * If not at end of string, we need to insert a null to terminate the
		 * returned token.  See notes above.
		 */
		if (*p != '\0')
		{
			if (!FUNC4(whitespace, *p))
				FUNC2(p + 1, p, FUNC8(p) + 1);
			*p = '\0';
			string = p + 1;
		}
		else
		{
			/* at end of string, so no extra work */
			string = p;
		}

		/* Clean up the token if caller wants that */
		if (del_quotes)
			FUNC7(start, thisquote, escape, encoding);

		return start;
	}

	/*
	 * Otherwise no quoting character.  Scan till next whitespace, delimiter
	 * or quote.  NB: at this point, *start is known not to be '\0',
	 * whitespace, delim, or quote, so we will consume at least one character.
	 */
	offset = FUNC6(start, whitespace);

	if (delim)
	{
		unsigned int offset2 = FUNC6(start, delim);

		if (offset > offset2)
			offset = offset2;
	}

	if (quote)
	{
		unsigned int offset2 = FUNC6(start, quote);

		if (offset > offset2)
			offset = offset2;
	}

	p = start + offset;

	/*
	 * If not at end of string, we need to insert a null to terminate the
	 * returned token.  See notes above.
	 */
	if (*p != '\0')
	{
		if (!FUNC4(whitespace, *p))
			FUNC2(p + 1, p, FUNC8(p) + 1);
		*p = '\0';
		string = p + 1;
	}
	else
	{
		/* at end of string, so no extra work */
		string = p;
	}

	return start;
}