#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,TYPE_1__*,int,int) ; 
 char* FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static bool
FUNC6(char *params,
						  PQconninfoOption *connOptions,
						  PQExpBuffer errorMessage)
{
	while (*params)
	{
		char	   *keyword = params;
		char	   *value = NULL;
		char	   *p = params;
		bool		malloced = false;

		/*
		 * Scan the params string for '=' and '&', marking the end of keyword
		 * and value respectively.
		 */
		for (;;)
		{
			if (*p == '=')
			{
				/* Was there '=' already? */
				if (value != NULL)
				{
					FUNC4(errorMessage,
									  FUNC3("extra key/value separator \"=\" in URI query parameter: \"%s\"\n"),
									  keyword);
					return false;
				}
				/* Cut off keyword, advance to value */
				*p++ = '\0';
				value = p;
			}
			else if (*p == '&' || *p == '\0')
			{
				/*
				 * If not at the end, cut off value and advance; leave p
				 * pointing to start of the next parameter, if any.
				 */
				if (*p != '\0')
					*p++ = '\0';
				/* Was there '=' at all? */
				if (value == NULL)
				{
					FUNC4(errorMessage,
									  FUNC3("missing key/value separator \"=\" in URI query parameter: \"%s\"\n"),
									  keyword);
					return false;
				}
				/* Got keyword and value, go process them. */
				break;
			}
			else
				++p;			/* Advance over all other bytes. */
		}

		keyword = FUNC1(keyword, errorMessage);
		if (keyword == NULL)
		{
			/* conninfo_uri_decode already set an error message */
			return false;
		}
		value = FUNC1(value, errorMessage);
		if (value == NULL)
		{
			/* conninfo_uri_decode already set an error message */
			FUNC2(keyword);
			return false;
		}
		malloced = true;

		/*
		 * Special keyword handling for improved JDBC compatibility.
		 */
		if (FUNC5(keyword, "ssl") == 0 &&
			FUNC5(value, "true") == 0)
		{
			FUNC2(keyword);
			FUNC2(value);
			malloced = false;

			keyword = "sslmode";
			value = "require";
		}

		/*
		 * Store the value if the corresponding option exists; ignore
		 * otherwise.  At this point both keyword and value are not
		 * URI-encoded.
		 */
		if (!FUNC0(connOptions, keyword, value,
							   errorMessage, true, false))
		{
			/* Insert generic message if conninfo_storeval didn't give one. */
			if (errorMessage->len == 0)
				FUNC4(errorMessage,
								  FUNC3("invalid URI query parameter: \"%s\"\n"),
								  keyword);
			/* And fail. */
			if (malloced)
			{
				FUNC2(keyword);
				FUNC2(value);
			}
			return false;
		}

		if (malloced)
		{
			FUNC2(keyword);
			FUNC2(value);
		}

		/* Proceed to next key=value pair, if any */
		params = p;
	}

	return true;
}