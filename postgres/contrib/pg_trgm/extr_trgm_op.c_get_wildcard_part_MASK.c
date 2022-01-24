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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int LPADDING ; 
 int RPADDING ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static const char *
FUNC5(const char *str, int lenstr,
				  char *buf, int *bytelen, int *charlen)
{
	const char *beginword = str;
	const char *endword;
	char	   *s = buf;
	bool		in_leading_wildcard_meta = false;
	bool		in_trailing_wildcard_meta = false;
	bool		in_escape = false;
	int			clen;

	/*
	 * Find the first word character, remembering whether preceding character
	 * was wildcard meta-character.  Note that the in_escape state persists
	 * from this loop to the next one, since we may exit at a word character
	 * that is in_escape.
	 */
	while (beginword - str < lenstr)
	{
		if (in_escape)
		{
			if (FUNC2(beginword))
				break;
			in_escape = false;
			in_leading_wildcard_meta = false;
		}
		else
		{
			if (FUNC0(beginword))
				in_escape = true;
			else if (FUNC1(beginword))
				in_leading_wildcard_meta = true;
			else if (FUNC2(beginword))
				break;
			else
				in_leading_wildcard_meta = false;
		}
		beginword += FUNC4(beginword);
	}

	/*
	 * Handle string end.
	 */
	if (beginword - str >= lenstr)
		return NULL;

	/*
	 * Add left padding spaces if preceding character wasn't wildcard
	 * meta-character.
	 */
	*charlen = 0;
	if (!in_leading_wildcard_meta)
	{
		if (LPADDING > 0)
		{
			*s++ = ' ';
			(*charlen)++;
			if (LPADDING > 1)
			{
				*s++ = ' ';
				(*charlen)++;
			}
		}
	}

	/*
	 * Copy data into buf until wildcard meta-character, non-word character or
	 * string boundary.  Strip escapes during copy.
	 */
	endword = beginword;
	while (endword - str < lenstr)
	{
		clen = FUNC4(endword);
		if (in_escape)
		{
			if (FUNC2(endword))
			{
				FUNC3(s, endword, clen);
				(*charlen)++;
				s += clen;
			}
			else
			{
				/*
				 * Back up endword to the escape character when stopping at an
				 * escaped char, so that subsequent get_wildcard_part will
				 * restart from the escape character.  We assume here that
				 * escape chars are single-byte.
				 */
				endword--;
				break;
			}
			in_escape = false;
		}
		else
		{
			if (FUNC0(endword))
				in_escape = true;
			else if (FUNC1(endword))
			{
				in_trailing_wildcard_meta = true;
				break;
			}
			else if (FUNC2(endword))
			{
				FUNC3(s, endword, clen);
				(*charlen)++;
				s += clen;
			}
			else
				break;
		}
		endword += clen;
	}

	/*
	 * Add right padding spaces if next character isn't wildcard
	 * meta-character.
	 */
	if (!in_trailing_wildcard_meta)
	{
		if (RPADDING > 0)
		{
			*s++ = ' ';
			(*charlen)++;
			if (RPADDING > 1)
			{
				*s++ = ' ';
				(*charlen)++;
			}
		}
	}

	*bytelen = s - buf;
	return endword;
}