#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  client_encoding; int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC7(PGconn *conn, const char *str, size_t len, bool as_ident)
{
	const char *s;
	char	   *result;
	char	   *rp;
	int			num_quotes = 0; /* single or double, depending on as_ident */
	int			num_backslashes = 0;
	int			input_len;
	int			result_size;
	char		quote_char = as_ident ? '"' : '\'';

	/* We must have a connection, else fail immediately. */
	if (!conn)
		return NULL;

	/* Scan the string for characters that must be escaped. */
	for (s = str; (s - str) < len && *s != '\0'; ++s)
	{
		if (*s == quote_char)
			++num_quotes;
		else if (*s == '\\')
			++num_backslashes;
		else if (FUNC0(*s))
		{
			int			charlen;

			/* Slow path for possible multibyte characters */
			charlen = FUNC5(conn->client_encoding, s);

			/* Multibyte character overruns allowable length. */
			if ((s - str) + charlen > len || FUNC3(s, 0, charlen) != NULL)
			{
				FUNC6(&conn->errorMessage,
								  FUNC1("incomplete multibyte character\n"));
				return NULL;
			}

			/* Adjust s, bearing in mind that for loop will increment it. */
			s += charlen - 1;
		}
	}

	/* Allocate output buffer. */
	input_len = s - str;
	result_size = input_len + num_quotes + 3;	/* two quotes, plus a NUL */
	if (!as_ident && num_backslashes > 0)
		result_size += num_backslashes + 2;
	result = rp = (char *) FUNC2(result_size);
	if (rp == NULL)
	{
		FUNC6(&conn->errorMessage,
						  FUNC1("out of memory\n"));
		return NULL;
	}

	/*
	 * If we are escaping a literal that contains backslashes, we use the
	 * escape string syntax so that the result is correct under either value
	 * of standard_conforming_strings.  We also emit a leading space in this
	 * case, to guard against the possibility that the result might be
	 * interpolated immediately following an identifier.
	 */
	if (!as_ident && num_backslashes > 0)
	{
		*rp++ = ' ';
		*rp++ = 'E';
	}

	/* Opening quote. */
	*rp++ = quote_char;

	/*
	 * Use fast path if possible.
	 *
	 * We've already verified that the input string is well-formed in the
	 * current encoding.  If it contains no quotes and, in the case of
	 * literal-escaping, no backslashes, then we can just copy it directly to
	 * the output buffer, adding the necessary quotes.
	 *
	 * If not, we must rescan the input and process each character
	 * individually.
	 */
	if (num_quotes == 0 && (num_backslashes == 0 || as_ident))
	{
		FUNC4(rp, str, input_len);
		rp += input_len;
	}
	else
	{
		for (s = str; s - str < input_len; ++s)
		{
			if (*s == quote_char || (!as_ident && *s == '\\'))
			{
				*rp++ = *s;
				*rp++ = *s;
			}
			else if (!FUNC0(*s))
				*rp++ = *s;
			else
			{
				int			i = FUNC5(conn->client_encoding, s);

				while (1)
				{
					*rp++ = *s;
					if (--i == 0)
						break;
					++s;		/* for loop will provide the final increment */
				}
			}
		}
	}

	/* Closing quote and terminating NUL. */
	*rp++ = quote_char;
	*rp = '\0';

	return result;
}