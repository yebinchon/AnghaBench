#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_10__ {int returncode; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  textaddr; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buf; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; int /*<<< orphan*/  backlog; } ;
struct TYPE_11__ {size_t how; TYPE_2__ outputs; int /*<<< orphan*/  want_addr; int /*<<< orphan*/  want_textaddr; TYPE_1__ inputs; int /*<<< orphan*/  op; } ;
typedef  TYPE_3__ php_stream_xport_param ;
struct TYPE_12__ {int eof; scalar_t__ abstract; } ;
typedef  TYPE_4__ php_stream ;
struct TYPE_13__ {int socket; int is_blocked; int timeout_event; struct timeval timeout; } ;
typedef  TYPE_5__ php_netstream_data_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAGAIN ; 
 int EMSGSIZE ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MSG_OOB ; 
 int MSG_PEEK ; 
 int PHP_POLLREADABLE ; 
#define  PHP_STREAM_OPTION_BLOCKING 141 
#define  PHP_STREAM_OPTION_CHECK_LIVENESS 140 
#define  PHP_STREAM_OPTION_META_DATA_API 139 
#define  PHP_STREAM_OPTION_READ_TIMEOUT 138 
 int PHP_STREAM_OPTION_RETURN_ERR ; 
 int PHP_STREAM_OPTION_RETURN_NOTIMPL ; 
 int PHP_STREAM_OPTION_RETURN_OK ; 
#define  PHP_STREAM_OPTION_XPORT_API 137 
 int POLLPRI ; 
#define  SHUT_RD 136 
#define  SHUT_RDWR 135 
#define  SHUT_WR 134 
 int STREAM_OOB ; 
 int STREAM_PEEK ; 
#define  STREAM_XPORT_OP_GET_NAME 133 
#define  STREAM_XPORT_OP_GET_PEER_NAME 132 
#define  STREAM_XPORT_OP_LISTEN 131 
#define  STREAM_XPORT_OP_RECV 130 
#define  STREAM_XPORT_OP_SEND 129 
#define  STREAM_XPORT_OP_SHUTDOWN 128 
 int /*<<< orphan*/  SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  default_socket_timeout ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int FUNC9 () ; 
 char* FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,int) ; 
 int FUNC12 (int,int const) ; 
 int FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(php_stream *stream, int option, int value, void *ptrparam)
{
	int oldmode, flags;
	php_netstream_data_t *sock = (php_netstream_data_t*)stream->abstract;
	php_stream_xport_param *xparam;

	if (!sock) {
		return PHP_STREAM_OPTION_RETURN_NOTIMPL;
	}

	switch(option) {
		case PHP_STREAM_OPTION_CHECK_LIVENESS:
			{
				struct timeval tv;
				char buf;
				int alive = 1;

				if (value == -1) {
					if (sock->timeout.tv_sec == -1) {
						tv.tv_sec = FUNC0(default_socket_timeout);
						tv.tv_usec = 0;
					} else {
						tv = sock->timeout;
					}
				} else {
					tv.tv_sec = value;
					tv.tv_usec = 0;
				}

				if (sock->socket == -1) {
					alive = 0;
				} else if (FUNC7(sock->socket, PHP_POLLREADABLE|POLLPRI, &tv) > 0) {
#ifdef PHP_WIN32
					int ret;
#else
					ssize_t ret;
#endif
					int err;

					ret = FUNC11(sock->socket, &buf, sizeof(buf), MSG_PEEK);
					err = FUNC9();
					if (0 == ret || /* the counterpart did properly shutdown*/
						(0 > ret && err != EWOULDBLOCK && err != EAGAIN && err != EMSGSIZE)) { /* there was an unrecoverable error */
						alive = 0;
					}
				}
				return alive ? PHP_STREAM_OPTION_RETURN_OK : PHP_STREAM_OPTION_RETURN_ERR;
			}

		case PHP_STREAM_OPTION_BLOCKING:
			oldmode = sock->is_blocked;
			if (SUCCESS == FUNC8(sock->socket, value)) {
				sock->is_blocked = value;
				return oldmode;
			}
			return PHP_STREAM_OPTION_RETURN_ERR;

		case PHP_STREAM_OPTION_READ_TIMEOUT:
			sock->timeout = *(struct timeval*)ptrparam;
			sock->timeout_event = 0;
			return PHP_STREAM_OPTION_RETURN_OK;

		case PHP_STREAM_OPTION_META_DATA_API:
			FUNC1((zval *)ptrparam, "timed_out", sock->timeout_event);
			FUNC1((zval *)ptrparam, "blocked", sock->is_blocked);
			FUNC1((zval *)ptrparam, "eof", stream->eof);
			return PHP_STREAM_OPTION_RETURN_OK;

		case PHP_STREAM_OPTION_XPORT_API:
			xparam = (php_stream_xport_param *)ptrparam;

			switch (xparam->op) {
				case STREAM_XPORT_OP_LISTEN:
					xparam->outputs.returncode = (FUNC3(sock->socket, xparam->inputs.backlog) == 0) ?  0: -1;
					return PHP_STREAM_OPTION_RETURN_OK;

				case STREAM_XPORT_OP_GET_NAME:
					xparam->outputs.returncode = FUNC6(sock->socket,
							xparam->want_textaddr ? &xparam->outputs.textaddr : NULL,
							xparam->want_addr ? &xparam->outputs.addr : NULL,
							xparam->want_addr ? &xparam->outputs.addrlen : NULL
							);
					return PHP_STREAM_OPTION_RETURN_OK;

				case STREAM_XPORT_OP_GET_PEER_NAME:
					xparam->outputs.returncode = FUNC5(sock->socket,
							xparam->want_textaddr ? &xparam->outputs.textaddr : NULL,
							xparam->want_addr ? &xparam->outputs.addr : NULL,
							xparam->want_addr ? &xparam->outputs.addrlen : NULL
							);
					return PHP_STREAM_OPTION_RETURN_OK;

				case STREAM_XPORT_OP_SEND:
					flags = 0;
					if ((xparam->inputs.flags & STREAM_OOB) == STREAM_OOB) {
						flags |= MSG_OOB;
					}
					xparam->outputs.returncode = FUNC14(sock,
							xparam->inputs.buf, xparam->inputs.buflen,
							flags,
							xparam->inputs.addr,
							xparam->inputs.addrlen);
					if (xparam->outputs.returncode == -1) {
						char *err = FUNC10(FUNC9(), NULL, 0);
						FUNC4(NULL, E_WARNING,
						   	"%s\n", err);
						FUNC2(err);
					}
					return PHP_STREAM_OPTION_RETURN_OK;

				case STREAM_XPORT_OP_RECV:
					flags = 0;
					if ((xparam->inputs.flags & STREAM_OOB) == STREAM_OOB) {
						flags |= MSG_OOB;
					}
					if ((xparam->inputs.flags & STREAM_PEEK) == STREAM_PEEK) {
						flags |= MSG_PEEK;
					}
					xparam->outputs.returncode = FUNC13(sock,
							xparam->inputs.buf, xparam->inputs.buflen,
							flags,
							xparam->want_textaddr ? &xparam->outputs.textaddr : NULL,
							xparam->want_addr ? &xparam->outputs.addr : NULL,
							xparam->want_addr ? &xparam->outputs.addrlen : NULL
							);
					return PHP_STREAM_OPTION_RETURN_OK;


#ifdef HAVE_SHUTDOWN
# ifndef SHUT_RD
#  define SHUT_RD 0
# endif
# ifndef SHUT_WR
#  define SHUT_WR 1
# endif
# ifndef SHUT_RDWR
#  define SHUT_RDWR 2
# endif
				case STREAM_XPORT_OP_SHUTDOWN: {
					static const int shutdown_how[] = {SHUT_RD, SHUT_WR, SHUT_RDWR};

					xparam->outputs.returncode = shutdown(sock->socket, shutdown_how[xparam->how]);
					return PHP_STREAM_OPTION_RETURN_OK;
				}
#endif

				default:
					return PHP_STREAM_OPTION_RETURN_NOTIMPL;
			}

		default:
			return PHP_STREAM_OPTION_RETURN_NOTIMPL;
	}
}