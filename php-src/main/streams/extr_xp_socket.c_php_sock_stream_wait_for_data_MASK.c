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
struct timeval {int tv_sec; } ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_3__ {int socket; int timeout_event; struct timeval timeout; } ;
typedef  TYPE_1__ php_netstream_data_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  PHP_POLLREADABLE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct timeval*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(php_stream *stream, php_netstream_data_t *sock)
{
	int retval;
	struct timeval *ptimeout;

	if (!sock || sock->socket == -1) {
		return;
	}

	sock->timeout_event = 0;

	if (sock->timeout.tv_sec == -1)
		ptimeout = NULL;
	else
		ptimeout = &sock->timeout;

	while(1) {
		retval = FUNC0(sock->socket, PHP_POLLREADABLE, ptimeout);

		if (retval == 0)
			sock->timeout_event = 1;

		if (retval >= 0)
			break;

		if (FUNC1() != EINTR)
			break;
	}
}