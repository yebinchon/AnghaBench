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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_3__ {int /*<<< orphan*/  errorMessage; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int ECONNRESET ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int PG_STRERROR_R_BUFLEN ; 
 int SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char*,int) ; 
#define  SSL_ERROR_NONE 133 
#define  SSL_ERROR_SSL 132 
#define  SSL_ERROR_SYSCALL 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 

ssize_t
FUNC10(PGconn *conn, void *ptr, size_t len)
{
	ssize_t		n;
	int			result_errno = 0;
	char		sebuf[PG_STRERROR_R_BUFLEN];
	int			err;
	unsigned long ecode;

rloop:

	/*
	 * Prepare to call SSL_get_error() by clearing thread's OpenSSL error
	 * queue.  In general, the current thread's error queue must be empty
	 * before the TLS/SSL I/O operation is attempted, or SSL_get_error() will
	 * not work reliably.  Since the possibility exists that other OpenSSL
	 * clients running in the same thread but not under our control will fail
	 * to call ERR_get_error() themselves (after their own I/O operations),
	 * pro-actively clear the per-thread error queue now.
	 */
	FUNC2(0);
	FUNC0();
	n = FUNC5(conn->ssl, ptr, len);
	err = FUNC4(conn->ssl, n);

	/*
	 * Other clients of OpenSSL may fail to call ERR_get_error(), but we
	 * always do, so as to not cause problems for OpenSSL clients that don't
	 * call ERR_clear_error() defensively.  Be sure that this happens by
	 * calling now.  SSL_get_error() relies on the OpenSSL per-thread error
	 * queue being intact, so this is the earliest possible point
	 * ERR_get_error() may be called.
	 */
	ecode = (err != SSL_ERROR_NONE || n < 0) ? FUNC1() : 0;
	switch (err)
	{
		case SSL_ERROR_NONE:
			if (n < 0)
			{
				/* Not supposed to happen, so we don't translate the msg */
				FUNC9(&conn->errorMessage,
								  "SSL_read failed but did not provide error information\n");
				/* assume the connection is broken */
				result_errno = ECONNRESET;
			}
			break;
		case SSL_ERROR_WANT_READ:
			n = 0;
			break;
		case SSL_ERROR_WANT_WRITE:

			/*
			 * Returning 0 here would cause caller to wait for read-ready,
			 * which is not correct since what SSL wants is wait for
			 * write-ready.  The former could get us stuck in an infinite
			 * wait, so don't risk it; busy-loop instead.
			 */
			goto rloop;
		case SSL_ERROR_SYSCALL:
			if (n < 0)
			{
				result_errno = SOCK_ERRNO;
				if (result_errno == EPIPE ||
					result_errno == ECONNRESET)
					FUNC9(&conn->errorMessage,
									  FUNC8(
													"server closed the connection unexpectedly\n"
													"\tThis probably means the server terminated abnormally\n"
													"\tbefore or while processing the request.\n"));
				else
					FUNC9(&conn->errorMessage,
									  FUNC8("SSL SYSCALL error: %s\n"),
									  FUNC3(result_errno,
													sebuf, sizeof(sebuf)));
			}
			else
			{
				FUNC9(&conn->errorMessage,
								  FUNC8("SSL SYSCALL error: EOF detected\n"));
				/* assume the connection is broken */
				result_errno = ECONNRESET;
				n = -1;
			}
			break;
		case SSL_ERROR_SSL:
			{
				char	   *errm = FUNC7(ecode);

				FUNC9(&conn->errorMessage,
								  FUNC8("SSL error: %s\n"), errm);
				FUNC6(errm);
				/* assume the connection is broken */
				result_errno = ECONNRESET;
				n = -1;
				break;
			}
		case SSL_ERROR_ZERO_RETURN:

			/*
			 * Per OpenSSL documentation, this error code is only returned for
			 * a clean connection closure, so we should not report it as a
			 * server crash.
			 */
			FUNC9(&conn->errorMessage,
							  FUNC8("SSL connection has been closed unexpectedly\n"));
			result_errno = ECONNRESET;
			n = -1;
			break;
		default:
			FUNC9(&conn->errorMessage,
							  FUNC8("unrecognized SSL error code: %d\n"),
							  err);
			/* assume the connection is broken */
			result_errno = ECONNRESET;
			n = -1;
			break;
	}

	/* ensure we return the intended errno to caller */
	FUNC2(result_errno);

	return n;
}