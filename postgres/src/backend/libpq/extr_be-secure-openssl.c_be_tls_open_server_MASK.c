#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ssl_in_use; char* peer_cn; int peer_cert_valid; int /*<<< orphan*/ * peer; scalar_t__ ssl; int /*<<< orphan*/  sock; int /*<<< orphan*/  noblock; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMMERROR ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  SSL_ERROR_SSL 132 
#define  SSL_ERROR_SYSCALL 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  SSL_context ; 
 int FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  WAIT_EVENT_SSL_OPEN_SERVER ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  info_cb ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (char*) ; 

int
FUNC20(Port *port)
{
	int			r;
	int			err;
	int			waitfor;
	unsigned long ecode;

	FUNC0(!port->ssl);
	FUNC0(!port->peer);

	if (!SSL_context)
	{
		FUNC13(COMMERROR,
				(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC16("could not initialize SSL connection: SSL context not set up")));
		return -1;
	}

	if (!(port->ssl = FUNC8(SSL_context)))
	{
		FUNC13(COMMERROR,
				(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC16("could not initialize SSL connection: %s",
						FUNC9(FUNC2()))));
		return -1;
	}
	if (!FUNC17(port, port->sock))
	{
		FUNC13(COMMERROR,
				(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
				 FUNC16("could not set SSL socket: %s",
						FUNC9(FUNC2()))));
		return -1;
	}
	port->ssl_in_use = true;

aloop:

	/*
	 * Prepare to call SSL_get_error() by clearing thread's OpenSSL error
	 * queue.  In general, the current thread's error queue must be empty
	 * before the TLS/SSL I/O operation is attempted, or SSL_get_error() will
	 * not work reliably.  An extension may have failed to clear the
	 * per-thread error queue following another call to an OpenSSL I/O
	 * routine.
	 */
	FUNC1();
	r = FUNC5(port->ssl);
	if (r <= 0)
	{
		err = FUNC6(port->ssl, r);

		/*
		 * Other clients of OpenSSL in the backend may fail to call
		 * ERR_get_error(), but we always do, so as to not cause problems for
		 * OpenSSL clients that don't call ERR_clear_error() defensively.  Be
		 * sure that this happens by calling now. SSL_get_error() relies on
		 * the OpenSSL per-thread error queue being intact, so this is the
		 * earliest possible point ERR_get_error() may be called.
		 */
		ecode = FUNC2();
		switch (err)
		{
			case SSL_ERROR_WANT_READ:
			case SSL_ERROR_WANT_WRITE:
				/* not allowed during connection establishment */
				FUNC0(!port->noblock);

				/*
				 * No need to care about timeouts/interrupts here. At this
				 * point authentication_timeout still employs
				 * StartupPacketTimeoutHandler() which directly exits.
				 */
				if (err == SSL_ERROR_WANT_READ)
					waitfor = WL_SOCKET_READABLE | WL_EXIT_ON_PM_DEATH;
				else
					waitfor = WL_SOCKET_WRITEABLE | WL_EXIT_ON_PM_DEATH;

				(void) FUNC10(MyLatch, waitfor, port->sock, 0,
										 WAIT_EVENT_SSL_OPEN_SERVER);
				goto aloop;
			case SSL_ERROR_SYSCALL:
				if (r < 0)
					FUNC13(COMMERROR,
							(FUNC15(),
							 FUNC16("could not accept SSL connection: %m")));
				else
					FUNC13(COMMERROR,
							(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
							 FUNC16("could not accept SSL connection: EOF detected")));
				break;
			case SSL_ERROR_SSL:
				FUNC13(COMMERROR,
						(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC16("could not accept SSL connection: %s",
								FUNC9(ecode))));
				break;
			case SSL_ERROR_ZERO_RETURN:
				FUNC13(COMMERROR,
						(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC16("could not accept SSL connection: EOF detected")));
				break;
			default:
				FUNC13(COMMERROR,
						(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC16("unrecognized SSL error code: %d",
								err)));
				break;
		}
		return -1;
	}

	/* Get client certificate, if available. */
	port->peer = FUNC7(port->ssl);

	/* and extract the Common Name from it. */
	port->peer_cn = NULL;
	port->peer_cert_valid = false;
	if (port->peer != NULL)
	{
		int			len;

		len = FUNC11(FUNC12(port->peer),
										NID_commonName, NULL, 0);
		if (len != -1)
		{
			char	   *peer_cn;

			peer_cn = FUNC3(TopMemoryContext, len + 1);
			r = FUNC11(FUNC12(port->peer),
										  NID_commonName, peer_cn, len + 1);
			peer_cn[len] = '\0';
			if (r != len)
			{
				/* shouldn't happen */
				FUNC18(peer_cn);
				return -1;
			}

			/*
			 * Reject embedded NULLs in certificate common name to prevent
			 * attacks like CVE-2009-4034.
			 */
			if (len != FUNC19(peer_cn))
			{
				FUNC13(COMMERROR,
						(FUNC14(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC16("SSL certificate's common name contains embedded null")));
				FUNC18(peer_cn);
				return -1;
			}

			port->peer_cn = peer_cn;
		}
		port->peer_cert_valid = true;
	}

	/* set up debugging/info callback */
	FUNC4(SSL_context, info_cb);

	return 0;
}