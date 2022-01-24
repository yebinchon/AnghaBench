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
struct TYPE_3__ {int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  COMMERROR ; 
 scalar_t__ ECONNRESET ; 
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 scalar_t__ EWOULDBLOCK ; 
#define  SSL_ERROR_NONE 133 
#define  SSL_ERROR_SSL 132 
#define  SSL_ERROR_SYSCALL 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_ZERO_RETURN 128 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC4 (unsigned long) ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ errno ; 

ssize_t
FUNC8(Port *port, void *ptr, size_t len, int *waitfor)
{
	ssize_t		n;
	int			err;
	unsigned long ecode;

	errno = 0;
	FUNC0();
	n = FUNC3(port->ssl, ptr, len);
	err = FUNC2(port->ssl, n);
	ecode = (err != SSL_ERROR_NONE || n < 0) ? FUNC1() : 0;
	switch (err)
	{
		case SSL_ERROR_NONE:
			/* a-ok */
			break;
		case SSL_ERROR_WANT_READ:
			*waitfor = WL_SOCKET_READABLE;
			errno = EWOULDBLOCK;
			n = -1;
			break;
		case SSL_ERROR_WANT_WRITE:
			*waitfor = WL_SOCKET_WRITEABLE;
			errno = EWOULDBLOCK;
			n = -1;
			break;
		case SSL_ERROR_SYSCALL:
			/* leave it to caller to ereport the value of errno */
			if (n != -1)
			{
				errno = ECONNRESET;
				n = -1;
			}
			break;
		case SSL_ERROR_SSL:
			FUNC5(COMMERROR,
					(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC7("SSL error: %s", FUNC4(ecode))));
			errno = ECONNRESET;
			n = -1;
			break;
		case SSL_ERROR_ZERO_RETURN:
			/* connection was cleanly shut down by peer */
			n = 0;
			break;
		default:
			FUNC5(COMMERROR,
					(FUNC6(ERRCODE_PROTOCOL_VIOLATION),
					 FUNC7("unrecognized SSL error code: %d",
							err)));
			errno = ECONNRESET;
			n = -1;
			break;
	}

	return n;
}