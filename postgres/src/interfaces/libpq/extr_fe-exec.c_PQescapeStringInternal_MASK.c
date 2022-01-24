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
struct TYPE_3__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC5(PGconn *conn,
					   char *to, const char *from, size_t length,
					   int *error,
					   int encoding, bool std_strings)
{
	const char *source = from;
	char	   *target = to;
	size_t		remaining = length;

	if (error)
		*error = 0;

	while (remaining > 0 && *source != '\0')
	{
		char		c = *source;
		int			len;
		int			i;

		/* Fast path for plain ASCII */
		if (!FUNC0(c))
		{
			/* Apply quoting if needed */
			if (FUNC1(c, !std_strings))
				*target++ = c;
			/* Copy the character */
			*target++ = c;
			source++;
			remaining--;
			continue;
		}

		/* Slow path for possible multibyte characters */
		len = FUNC3(encoding, source);

		/* Copy the character */
		for (i = 0; i < len; i++)
		{
			if (remaining == 0 || *source == '\0')
				break;
			*target++ = *source++;
			remaining--;
		}

		/*
		 * If we hit premature end of string (ie, incomplete multibyte
		 * character), try to pad out to the correct length with spaces. We
		 * may not be able to pad completely, but we will always be able to
		 * insert at least one pad space (since we'd not have quoted a
		 * multibyte character).  This should be enough to make a string that
		 * the server will error out on.
		 */
		if (i < len)
		{
			if (error)
				*error = 1;
			if (conn)
				FUNC4(&conn->errorMessage,
								  FUNC2("incomplete multibyte character\n"));
			for (; i < len; i++)
			{
				if (((size_t) (target - to)) / 2 >= length)
					break;
				*target++ = ' ';
			}
			break;
		}
	}

	/* Write the terminating NUL character. */
	*target = '\0';

	return target - to;
}