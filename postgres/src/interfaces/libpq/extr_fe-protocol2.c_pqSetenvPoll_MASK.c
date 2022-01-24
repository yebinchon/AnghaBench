#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ status; int setenv_state; char* client_encoding_initial; int sversion; int /*<<< orphan*/  errorMessage; TYPE_1__* next_eo; } ;
struct TYPE_9__ {char* envName; char* pgName; } ;
typedef  int /*<<< orphan*/  PostgresPollingStatusType ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_2__ PGconn ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 int /*<<< orphan*/  PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_POLLING_FAILED ; 
 int /*<<< orphan*/  PGRES_POLLING_OK ; 
 int /*<<< orphan*/  PGRES_POLLING_READING ; 
 int /*<<< orphan*/  PGRES_TUPLES_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 
#define  SETENV_STATE_CLIENT_ENCODING_SEND 136 
#define  SETENV_STATE_CLIENT_ENCODING_WAIT 135 
#define  SETENV_STATE_IDLE 134 
#define  SETENV_STATE_OPTION_SEND 133 
#define  SETENV_STATE_OPTION_WAIT 132 
#define  SETENV_STATE_QUERY1_SEND 131 
#define  SETENV_STATE_QUERY1_WAIT 130 
#define  SETENV_STATE_QUERY2_SEND 129 
#define  SETENV_STATE_QUERY2_WAIT 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 

PostgresPollingStatusType
FUNC17(PGconn *conn)
{
	PGresult   *res;

	if (conn == NULL || conn->status == CONNECTION_BAD)
		return PGRES_POLLING_FAILED;

	/* Check whether there are any data for us */
	switch (conn->setenv_state)
	{
			/* These are reading states */
		case SETENV_STATE_CLIENT_ENCODING_WAIT:
		case SETENV_STATE_OPTION_WAIT:
		case SETENV_STATE_QUERY1_WAIT:
		case SETENV_STATE_QUERY2_WAIT:
			{
				/* Load waiting data */
				int			n = FUNC11(conn);

				if (n < 0)
					goto error_return;
				if (n == 0)
					return PGRES_POLLING_READING;

				break;
			}

			/* These are writing states, so we just proceed. */
		case SETENV_STATE_CLIENT_ENCODING_SEND:
		case SETENV_STATE_OPTION_SEND:
		case SETENV_STATE_QUERY1_SEND:
		case SETENV_STATE_QUERY2_SEND:
			break;

			/* Should we raise an error if called when not active? */
		case SETENV_STATE_IDLE:
			return PGRES_POLLING_OK;

		default:
			FUNC13(&conn->errorMessage,
							  FUNC9(
											"invalid setenv state %c, "
											"probably indicative of memory corruption\n"
											),
							  conn->setenv_state);
			goto error_return;
	}

	/* We will loop here until there is nothing left to do in this call. */
	for (;;)
	{
		switch (conn->setenv_state)
		{
				/*
				 * The _CLIENT_ENCODING_SEND code is slightly different from
				 * _OPTION_SEND below (e.g., no getenv() call), which is why a
				 * different state is used.
				 */
			case SETENV_STATE_CLIENT_ENCODING_SEND:
				{
					char		setQuery[100];	/* note length limit in
												 * sprintf below */
					const char *val = conn->client_encoding_initial;

					if (val)
					{
						if (FUNC10(val, "default") == 0)
							FUNC14(setQuery, "SET client_encoding = DEFAULT");
						else
							FUNC14(setQuery, "SET client_encoding = '%.60s'",
									val);
#ifdef CONNECTDEBUG
						fprintf(stderr,
								"Sending client_encoding with %s\n",
								setQuery);
#endif
						if (!FUNC6(conn, setQuery))
							goto error_return;

						conn->setenv_state = SETENV_STATE_CLIENT_ENCODING_WAIT;
					}
					else
						conn->setenv_state = SETENV_STATE_OPTION_SEND;
					break;
				}

			case SETENV_STATE_OPTION_SEND:
				{
					/*
					 * Send SET commands for stuff directed by Environment
					 * Options.  Note: we assume that SET commands won't start
					 * transaction blocks, even in a 7.3 server with
					 * autocommit off.
					 */
					char		setQuery[100];	/* note length limit in
												 * sprintf below */

					if (conn->next_eo->envName)
					{
						const char *val;

						if ((val = FUNC8(conn->next_eo->envName)))
						{
							if (FUNC10(val, "default") == 0)
								FUNC14(setQuery, "SET %s = DEFAULT",
										conn->next_eo->pgName);
							else
								FUNC14(setQuery, "SET %s = '%.60s'",
										conn->next_eo->pgName, val);
#ifdef CONNECTDEBUG
							fprintf(stderr,
									"Use environment variable %s to send %s\n",
									conn->next_eo->envName, setQuery);
#endif
							if (!FUNC6(conn, setQuery))
								goto error_return;

							conn->setenv_state = SETENV_STATE_OPTION_WAIT;
						}
						else
							conn->next_eo++;
					}
					else
					{
						/* No more options to send, so move on to querying */
						conn->setenv_state = SETENV_STATE_QUERY1_SEND;
					}
					break;
				}

			case SETENV_STATE_CLIENT_ENCODING_WAIT:
				{
					if (FUNC3(conn))
						return PGRES_POLLING_READING;

					res = FUNC1(conn);

					if (res)
					{
						if (FUNC5(res) != PGRES_COMMAND_OK)
						{
							FUNC0(res);
							goto error_return;
						}
						FUNC0(res);
						/* Keep reading until PQgetResult returns NULL */
					}
					else
					{
						/* Query finished, so send the next option */
						conn->setenv_state = SETENV_STATE_OPTION_SEND;
					}
					break;
				}

			case SETENV_STATE_OPTION_WAIT:
				{
					if (FUNC3(conn))
						return PGRES_POLLING_READING;

					res = FUNC1(conn);

					if (res)
					{
						if (FUNC5(res) != PGRES_COMMAND_OK)
						{
							FUNC0(res);
							goto error_return;
						}
						FUNC0(res);
						/* Keep reading until PQgetResult returns NULL */
					}
					else
					{
						/* Query finished, so send the next option */
						conn->next_eo++;
						conn->setenv_state = SETENV_STATE_OPTION_SEND;
					}
					break;
				}

			case SETENV_STATE_QUERY1_SEND:
				{
					/*
					 * Issue query to get information we need.  Here we must
					 * use begin/commit in case autocommit is off by default
					 * in a 7.3 server.
					 *
					 * Note: version() exists in all protocol-2.0-supporting
					 * backends.  In 7.3 it would be safer to write
					 * pg_catalog.version(), but we can't do that without
					 * causing problems on older versions.
					 */
					if (!FUNC6(conn, "begin; select version(); end"))
						goto error_return;

					conn->setenv_state = SETENV_STATE_QUERY1_WAIT;
					return PGRES_POLLING_READING;
				}

			case SETENV_STATE_QUERY1_WAIT:
				{
					if (FUNC3(conn))
						return PGRES_POLLING_READING;

					res = FUNC1(conn);

					if (res)
					{
						char	   *val;

						if (FUNC5(res) == PGRES_COMMAND_OK)
						{
							/* ignore begin/commit command results */
							FUNC0(res);
							continue;
						}

						if (FUNC5(res) != PGRES_TUPLES_OK ||
							FUNC4(res) != 1)
						{
							FUNC0(res);
							goto error_return;
						}

						/*
						 * Extract server version and save as if
						 * ParameterStatus
						 */
						val = FUNC2(res, 0, 0);
						if (val && FUNC16(val, "PostgreSQL ", 11) == 0)
						{
							char	   *ptr;

							/* strip off PostgreSQL part */
							val += 11;

							/*
							 * strip off platform part (scribbles on result,
							 * naughty naughty)
							 */
							ptr = FUNC15(val, ' ');
							if (ptr)
								*ptr = '\0';

							FUNC12(conn, "server_version",
												  val);
						}

						FUNC0(res);
						/* Keep reading until PQgetResult returns NULL */
					}
					else
					{
						/* Query finished, move to next */
						conn->setenv_state = SETENV_STATE_QUERY2_SEND;
					}
					break;
				}

			case SETENV_STATE_QUERY2_SEND:
				{
					const char *query;

					/*
					 * pg_client_encoding does not exist in pre-7.2 servers.
					 * So we need to be prepared for an error here.  Do *not*
					 * start a transaction block, except in 7.3 servers where
					 * we need to prevent autocommit-off from starting a
					 * transaction anyway.
					 */
					if (conn->sversion >= 70300 &&
						conn->sversion < 70400)
						query = "begin; select pg_catalog.pg_client_encoding(); end";
					else
						query = "select pg_client_encoding()";
					if (!FUNC6(conn, query))
						goto error_return;

					conn->setenv_state = SETENV_STATE_QUERY2_WAIT;
					return PGRES_POLLING_READING;
				}

			case SETENV_STATE_QUERY2_WAIT:
				{
					if (FUNC3(conn))
						return PGRES_POLLING_READING;

					res = FUNC1(conn);

					if (res)
					{
						const char *val;

						if (FUNC5(res) == PGRES_COMMAND_OK)
						{
							/* ignore begin/commit command results */
							FUNC0(res);
							continue;
						}

						if (FUNC5(res) == PGRES_TUPLES_OK &&
							FUNC4(res) == 1)
						{
							/* Extract client encoding and save it */
							val = FUNC2(res, 0, 0);
							if (val && *val)	/* null should not happen, but */
								FUNC12(conn, "client_encoding",
													  val);
						}
						else
						{
							/*
							 * Error: presumably function not available, so
							 * use PGCLIENTENCODING or SQL_ASCII as the
							 * fallback.
							 */
							val = FUNC8("PGCLIENTENCODING");
							if (val && *val)
								FUNC12(conn, "client_encoding",
													  val);
							else
								FUNC12(conn, "client_encoding",
													  "SQL_ASCII");
						}

						FUNC0(res);
						/* Keep reading until PQgetResult returns NULL */
					}
					else
					{
						/* Query finished, so we're done */
						conn->setenv_state = SETENV_STATE_IDLE;
						return PGRES_POLLING_OK;
					}
					break;
				}

			default:
				FUNC13(&conn->errorMessage,
								  FUNC9("invalid state %c, "
												"probably indicative of memory corruption\n"),
								  conn->setenv_state);
				goto error_return;
		}
	}

	/* Unreachable */

error_return:
	conn->setenv_state = SETENV_STATE_IDLE;
	return PGRES_POLLING_FAILED;
}