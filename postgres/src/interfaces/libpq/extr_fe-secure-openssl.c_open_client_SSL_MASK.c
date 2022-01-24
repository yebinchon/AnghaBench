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
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_5__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/ * peer; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  PostgresPollingStatusType ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  PGRES_POLLING_FAILED ; 
 int /*<<< orphan*/  PGRES_POLLING_OK ; 
 int /*<<< orphan*/  PGRES_POLLING_READING ; 
 int /*<<< orphan*/  PGRES_POLLING_WRITING ; 
 int PG_STRERROR_R_BUFLEN ; 
 int /*<<< orphan*/  SOCK_ERRNO ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
#define  SSL_ERROR_SSL 131 
#define  SSL_ERROR_SYSCALL 130 
#define  SSL_ERROR_WANT_READ 129 
#define  SSL_ERROR_WANT_WRITE 128 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static PostgresPollingStatusType
FUNC12(PGconn *conn)
{
	int			r;

	FUNC0();
	r = FUNC3(conn->ssl);
	if (r <= 0)
	{
		int			err = FUNC4(conn->ssl, r);
		unsigned long ecode;

		ecode = FUNC1();
		switch (err)
		{
			case SSL_ERROR_WANT_READ:
				return PGRES_POLLING_READING;

			case SSL_ERROR_WANT_WRITE:
				return PGRES_POLLING_WRITING;

			case SSL_ERROR_SYSCALL:
				{
					char		sebuf[PG_STRERROR_R_BUFLEN];

					if (r == -1)
						FUNC11(&conn->errorMessage,
										  FUNC8("SSL SYSCALL error: %s\n"),
										  FUNC2(SOCK_ERRNO, sebuf, sizeof(sebuf)));
					else
						FUNC11(&conn->errorMessage,
										  FUNC8("SSL SYSCALL error: EOF detected\n"));
					FUNC9(conn);
					return PGRES_POLLING_FAILED;
				}
			case SSL_ERROR_SSL:
				{
					char	   *err = FUNC7(ecode);

					FUNC11(&conn->errorMessage,
									  FUNC8("SSL error: %s\n"),
									  err);
					FUNC6(err);
					FUNC9(conn);
					return PGRES_POLLING_FAILED;
				}

			default:
				FUNC11(&conn->errorMessage,
								  FUNC8("unrecognized SSL error code: %d\n"),
								  err);
				FUNC9(conn);
				return PGRES_POLLING_FAILED;
		}
	}

	/*
	 * We already checked the server certificate in initialize_SSL() using
	 * SSL_CTX_set_verify(), if root.crt exists.
	 */

	/* get server certificate */
	conn->peer = FUNC5(conn->ssl);
	if (conn->peer == NULL)
	{
		char	   *err;

		err = FUNC7(FUNC1());

		FUNC11(&conn->errorMessage,
						  FUNC8("certificate could not be obtained: %s\n"),
						  err);
		FUNC6(err);
		FUNC9(conn);
		return PGRES_POLLING_FAILED;
	}

	if (!FUNC10(conn))
	{
		FUNC9(conn);
		return PGRES_POLLING_FAILED;
	}

	/* SSL handshake is complete */
	return PGRES_POLLING_OK;
}