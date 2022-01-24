#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* data; } ;
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  TYPE_1__ PQExpBufferData ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static bool
FUNC12(PQconninfoOption *options, const char *uri,
						   PQExpBuffer errorMessage)
{
	int			prefix_len;
	char	   *p;
	char	   *buf = NULL;
	char	   *start;
	char		prevchar = '\0';
	char	   *user = NULL;
	char	   *host = NULL;
	bool		retval = false;
	PQExpBufferData hostbuf;
	PQExpBufferData portbuf;

	FUNC6(&hostbuf);
	FUNC6(&portbuf);
	if (FUNC0(hostbuf) || FUNC0(portbuf))
	{
		FUNC8(errorMessage,
						  FUNC7("out of memory\n"));
		goto cleanup;
	}

	/* need a modifiable copy of the input URI */
	buf = FUNC9(uri);
	if (buf == NULL)
	{
		FUNC8(errorMessage,
						  FUNC7("out of memory\n"));
		goto cleanup;
	}
	start = buf;

	/* Skip the URI prefix */
	prefix_len = FUNC11(uri);
	if (prefix_len == 0)
	{
		/* Should never happen */
		FUNC8(errorMessage,
						  FUNC7("invalid URI propagated to internal parser routine: \"%s\"\n"),
						  uri);
		goto cleanup;
	}
	start += prefix_len;
	p = start;

	/* Look ahead for possible user credentials designator */
	while (*p && *p != '@' && *p != '/')
		++p;
	if (*p == '@')
	{
		/*
		 * Found username/password designator, so URI should be of the form
		 * "scheme://user[:password]@[netloc]".
		 */
		user = start;

		p = user;
		while (*p != ':' && *p != '@')
			++p;

		/* Save last char and cut off at end of user name */
		prevchar = *p;
		*p = '\0';

		if (*user &&
			!FUNC3(options, "user", user,
							   errorMessage, false, true))
			goto cleanup;

		if (prevchar == ':')
		{
			const char *password = p + 1;

			while (*p != '@')
				++p;
			*p = '\0';

			if (*password &&
				!FUNC3(options, "password", password,
								   errorMessage, false, true))
				goto cleanup;
		}

		/* Advance past end of parsed user name or password token */
		++p;
	}
	else
	{
		/*
		 * No username/password designator found.  Reset to start of URI.
		 */
		p = start;
	}

	/*
	 * There may be multiple netloc[:port] pairs, each separated from the next
	 * by a comma.  When we initially enter this loop, "p" has been
	 * incremented past optional URI credential information at this point and
	 * now points at the "netloc" part of the URI.  On subsequent loop
	 * iterations, "p" has been incremented past the comma separator and now
	 * points at the start of the next "netloc".
	 */
	for (;;)
	{
		/*
		 * Look for IPv6 address.
		 */
		if (*p == '[')
		{
			host = ++p;
			while (*p && *p != ']')
				++p;
			if (!*p)
			{
				FUNC8(errorMessage,
								  FUNC7("end of string reached when looking for matching \"]\" in IPv6 host address in URI: \"%s\"\n"),
								  uri);
				goto cleanup;
			}
			if (p == host)
			{
				FUNC8(errorMessage,
								  FUNC7("IPv6 host address may not be empty in URI: \"%s\"\n"),
								  uri);
				goto cleanup;
			}

			/* Cut off the bracket and advance */
			*(p++) = '\0';

			/*
			 * The address may be followed by a port specifier or a slash or a
			 * query or a separator comma.
			 */
			if (*p && *p != ':' && *p != '/' && *p != '?' && *p != ',')
			{
				FUNC8(errorMessage,
								  FUNC7("unexpected character \"%c\" at position %d in URI (expected \":\" or \"/\"): \"%s\"\n"),
								  *p, (int) (p - buf + 1), uri);
				goto cleanup;
			}
		}
		else
		{
			/* not an IPv6 address: DNS-named or IPv4 netloc */
			host = p;

			/*
			 * Look for port specifier (colon) or end of host specifier
			 * (slash) or query (question mark) or host separator (comma).
			 */
			while (*p && *p != ':' && *p != '/' && *p != '?' && *p != ',')
				++p;
		}

		/* Save the hostname terminator before we null it */
		prevchar = *p;
		*p = '\0';

		FUNC2(&hostbuf, host);

		if (prevchar == ':')
		{
			const char *port = ++p; /* advance past host terminator */

			while (*p && *p != '/' && *p != '?' && *p != ',')
				++p;

			prevchar = *p;
			*p = '\0';

			FUNC2(&portbuf, port);
		}

		if (prevchar != ',')
			break;
		++p;					/* advance past comma separator */
		FUNC1(&hostbuf, ',');
		FUNC1(&portbuf, ',');
	}

	/* Save final values for host and port. */
	if (FUNC0(hostbuf) || FUNC0(portbuf))
		goto cleanup;
	if (hostbuf.data[0] &&
		!FUNC3(options, "host", hostbuf.data,
						   errorMessage, false, true))
		goto cleanup;
	if (portbuf.data[0] &&
		!FUNC3(options, "port", portbuf.data,
						   errorMessage, false, true))
		goto cleanup;

	if (prevchar && prevchar != '?')
	{
		const char *dbname = ++p;	/* advance past host terminator */

		/* Look for query parameters */
		while (*p && *p != '?')
			++p;

		prevchar = *p;
		*p = '\0';

		/*
		 * Avoid setting dbname to an empty string, as it forces the default
		 * value (username) and ignores $PGDATABASE, as opposed to not setting
		 * it at all.
		 */
		if (*dbname &&
			!FUNC3(options, "dbname", dbname,
							   errorMessage, false, true))
			goto cleanup;
	}

	if (prevchar)
	{
		++p;					/* advance past terminator */

		if (!FUNC4(p, options, errorMessage))
			goto cleanup;
	}

	/* everything parsed okay */
	retval = true;

cleanup:
	FUNC10(&hostbuf);
	FUNC10(&portbuf);
	if (buf)
		FUNC5(buf);
	return retval;
}