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
typedef  int /*<<< orphan*/  pg_locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_ESCAPE_SEQUENCE ; 
 int /*<<< orphan*/  ERROR ; 
 char FUNC0 (char const) ; 
 int LIKE_ABORT ; 
 int LIKE_FALSE ; 
 int LIKE_TRUE ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(const char *t, int tlen, const char *p, int plen,
		  pg_locale_t locale, bool locale_is_c)
{
	/* Fast path for match-everything pattern */
	if (plen == 1 && *p == '%')
		return LIKE_TRUE;

	/* Since this function recurses, it could be driven to stack overflow */
	FUNC3();

	/*
	 * In this loop, we advance by char when matching wildcards (and thus on
	 * recursive entry to this function we are properly char-synced). On other
	 * occasions it is safe to advance by byte, as the text and pattern will
	 * be in lockstep. This allows us to perform all comparisons between the
	 * text and pattern on a byte by byte basis, even for multi-byte
	 * encodings.
	 */
	while (tlen > 0 && plen > 0)
	{
		if (*p == '\\')
		{
			/* Next pattern byte must match literally, whatever it is */
			FUNC1(p, plen);
			/* ... and there had better be one, per SQL standard */
			if (plen <= 0)
				FUNC4(ERROR,
						(FUNC5(ERRCODE_INVALID_ESCAPE_SEQUENCE),
						 FUNC6("LIKE pattern must not end with escape character")));
			if (FUNC0(*p) != FUNC0(*t))
				return LIKE_FALSE;
		}
		else if (*p == '%')
		{
			char		firstpat;

			/*
			 * % processing is essentially a search for a text position at
			 * which the remainder of the text matches the remainder of the
			 * pattern, using a recursive call to check each potential match.
			 *
			 * If there are wildcards immediately following the %, we can skip
			 * over them first, using the idea that any sequence of N _'s and
			 * one or more %'s is equivalent to N _'s and one % (ie, it will
			 * match any sequence of at least N text characters).  In this way
			 * we will always run the recursive search loop using a pattern
			 * fragment that begins with a literal character-to-match, thereby
			 * not recursing more than we have to.
			 */
			FUNC1(p, plen);

			while (plen > 0)
			{
				if (*p == '%')
					FUNC1(p, plen);
				else if (*p == '_')
				{
					/* If not enough text left to match the pattern, ABORT */
					if (tlen <= 0)
						return LIKE_ABORT;
					FUNC2(t, tlen);
					FUNC1(p, plen);
				}
				else
					break;		/* Reached a non-wildcard pattern char */
			}

			/*
			 * If we're at end of pattern, match: we have a trailing % which
			 * matches any remaining text string.
			 */
			if (plen <= 0)
				return LIKE_TRUE;

			/*
			 * Otherwise, scan for a text position at which we can match the
			 * rest of the pattern.  The first remaining pattern char is known
			 * to be a regular or escaped literal character, so we can compare
			 * the first pattern byte to each text byte to avoid recursing
			 * more than we have to.  This fact also guarantees that we don't
			 * have to consider a match to the zero-length substring at the
			 * end of the text.
			 */
			if (*p == '\\')
			{
				if (plen < 2)
					FUNC4(ERROR,
							(FUNC5(ERRCODE_INVALID_ESCAPE_SEQUENCE),
							 FUNC6("LIKE pattern must not end with escape character")));
				firstpat = FUNC0(p[1]);
			}
			else
				firstpat = FUNC0(*p);

			while (tlen > 0)
			{
				if (FUNC0(*t) == firstpat)
				{
					int			matched = FUNC7(t, tlen, p, plen,
													locale, locale_is_c);

					if (matched != LIKE_FALSE)
						return matched; /* TRUE or ABORT */
				}

				FUNC2(t, tlen);
			}

			/*
			 * End of text with no match, so no point in trying later places
			 * to start matching this pattern.
			 */
			return LIKE_ABORT;
		}
		else if (*p == '_')
		{
			/* _ matches any single character, and we know there is one */
			FUNC2(t, tlen);
			FUNC1(p, plen);
			continue;
		}
		else if (FUNC0(*p) != FUNC0(*t))
		{
			/* non-wildcard pattern char fails to match text char */
			return LIKE_FALSE;
		}

		/*
		 * Pattern and text match, so advance.
		 *
		 * It is safe to use NextByte instead of NextChar here, even for
		 * multi-byte character sets, because we are not following immediately
		 * after a wildcard character. If we are in the middle of a multibyte
		 * character, we must already have matched at least one byte of the
		 * character from both text and pattern; so we cannot get out-of-sync
		 * on character boundaries.  And we know that no backend-legal
		 * encoding allows ASCII characters such as '%' to appear as non-first
		 * bytes of characters, so we won't mistakenly detect a new wildcard.
		 */
		FUNC1(t, tlen);
		FUNC1(p, plen);
	}

	if (tlen > 0)
		return LIKE_FALSE;		/* end of pattern, but not of text */

	/*
	 * End of text, but perhaps not of pattern.  Match iff the remaining
	 * pattern can match a zero-length string, ie, it's zero or more %'s.
	 */
	while (plen > 0 && *p == '%')
		FUNC1(p, plen);
	if (plen <= 0)
		return LIKE_TRUE;

	/*
	 * End of text with no match, so no point in trying later places to start
	 * matching this pattern.
	 */
	return LIKE_ABORT;
}