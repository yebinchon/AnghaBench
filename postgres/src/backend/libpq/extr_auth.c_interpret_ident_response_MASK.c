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
typedef  int /*<<< orphan*/  response_type ;

/* Variables and functions */
 int IDENT_USERNAME_MAX ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static bool
FUNC3(const char *ident_response,
						 char *ident_user)
{
	const char *cursor = ident_response;	/* Cursor into *ident_response */

	/*
	 * Ident's response, in the telnet tradition, should end in crlf (\r\n).
	 */
	if (FUNC2(ident_response) < 2)
		return false;
	else if (ident_response[FUNC2(ident_response) - 2] != '\r')
		return false;
	else
	{
		while (*cursor != ':' && *cursor != '\r')
			cursor++;			/* skip port field */

		if (*cursor != ':')
			return false;
		else
		{
			/* We're positioned to colon before response type field */
			char		response_type[80];
			int			i;		/* Index into *response_type */

			cursor++;			/* Go over colon */
			while (FUNC0(*cursor))
				cursor++;		/* skip blanks */
			i = 0;
			while (*cursor != ':' && *cursor != '\r' && !FUNC0(*cursor) &&
				   i < (int) (sizeof(response_type) - 1))
				response_type[i++] = *cursor++;
			response_type[i] = '\0';
			while (FUNC0(*cursor))
				cursor++;		/* skip blanks */
			if (FUNC1(response_type, "USERID") != 0)
				return false;
			else
			{
				/*
				 * It's a USERID response.  Good.  "cursor" should be pointing
				 * to the colon that precedes the operating system type.
				 */
				if (*cursor != ':')
					return false;
				else
				{
					cursor++;	/* Go over colon */
					/* Skip over operating system field. */
					while (*cursor != ':' && *cursor != '\r')
						cursor++;
					if (*cursor != ':')
						return false;
					else
					{
						int			i;	/* Index into *ident_user */

						cursor++;	/* Go over colon */
						while (FUNC0(*cursor))
							cursor++;	/* skip blanks */
						/* Rest of line is user name.  Copy it over. */
						i = 0;
						while (*cursor != '\r' && i < IDENT_USERNAME_MAX)
							ident_user[i++] = *cursor++;
						ident_user[i] = '\0';
						return true;
					}
				}
			}
		}
	}
}