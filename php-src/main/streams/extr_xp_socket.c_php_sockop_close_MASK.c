#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_7__ {int socket; } ;
typedef  TYPE_2__ php_netstream_data_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SHUT_RD ; 
 void* SOCK_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(php_stream *stream, int close_handle)
{
	php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;
#ifdef PHP_WIN32
	int n;
#endif

	if (!sock) {
		return 0;
	}

	if (close_handle) {

#ifdef PHP_WIN32
		if (sock->socket == -1)
			sock->socket = SOCK_ERR;
#endif
		if (sock->socket != SOCK_ERR) {
#ifdef PHP_WIN32
			/* prevent more data from coming in */
			shutdown(sock->socket, SHUT_RD);

			/* try to make sure that the OS sends all data before we close the connection.
			 * Essentially, we are waiting for the socket to become writeable, which means
			 * that all pending data has been sent.
			 * We use a small timeout which should encourage the OS to send the data,
			 * but at the same time avoid hanging indefinitely.
			 * */
			do {
				n = php_pollfd_for_ms(sock->socket, POLLOUT, 500);
			} while (n == -1 && php_socket_errno() == EINTR);
#endif
			FUNC0(sock->socket);
			sock->socket = SOCK_ERR;
		}

	}

	FUNC1(sock, FUNC4(stream));

	return 0;
}