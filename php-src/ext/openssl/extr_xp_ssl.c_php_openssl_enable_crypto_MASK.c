#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {scalar_t__ activate; } ;
struct TYPE_11__ {TYPE_2__ inputs; } ;
typedef  TYPE_3__ php_stream_xport_crypto_param ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_9__ {int is_blocked; int /*<<< orphan*/  socket; struct timeval timeout; } ;
struct TYPE_12__ {int ssl_active; int state_set; int /*<<< orphan*/  ssl_handle; TYPE_1__ s; scalar_t__ is_client; struct timeval connect_timeout; } ;
typedef  TYPE_4__ php_openssl_netstream_data_t ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_DEPRECATED ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ; 
 int SSL_MODE_ENABLE_PARTIAL_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC13 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct timeval,struct timeval) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int,int) ; 
 struct timeval FUNC22 (struct timeval,struct timeval) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,struct timeval*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC25 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(php_stream *stream,
		php_openssl_netstream_data_t *sslsock,
		php_stream_xport_crypto_param *cparam) /* {{{ */
{
	int n;
	int retry = 1;
	int cert_captured = 0;
	X509 *peer_cert;

	if (cparam->inputs.activate && !sslsock->ssl_active) {
		struct timeval start_time, *timeout;
		int	blocked = sslsock->s.is_blocked, has_timeout = 0;

#ifdef HAVE_TLS_SNI
		if (sslsock->is_client) {
			php_openssl_enable_client_sni(stream, sslsock);
		}
#endif

		if (!sslsock->state_set) {
			if (sslsock->is_client) {
				FUNC8(sslsock->ssl_handle);
			} else {
				FUNC7(sslsock->ssl_handle);
			}
			sslsock->state_set = 1;
		}

		if (SUCCESS == FUNC24(sslsock->s.socket, 0)) {
			sslsock->s.is_blocked = 0;
			/* The following mode are added only if we are able to change socket
			 * to non blocking mode which is also used for read and write */
			FUNC9(
				sslsock->ssl_handle,
				(
					FUNC5(sslsock->ssl_handle) |
					SSL_MODE_ENABLE_PARTIAL_WRITE |
					SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER
				)
			);
		}

		timeout = sslsock->is_client ? &sslsock->connect_timeout : &sslsock->s.timeout;
		has_timeout = !sslsock->s.is_blocked && (timeout->tv_sec || timeout->tv_usec);
		/* gettimeofday is not monotonic; using it here is not strictly correct */
		if (has_timeout) {
			FUNC13(&start_time, NULL);
		}

		do {
			struct timeval cur_time, elapsed_time;

			FUNC0();
			if (sslsock->is_client) {
				n = FUNC3(sslsock->ssl_handle);
			} else {
				n = FUNC2(sslsock->ssl_handle);
			}

			if (has_timeout) {
				FUNC13(&cur_time, NULL);
				elapsed_time = FUNC22(cur_time, start_time);

				if (FUNC19( elapsed_time, *timeout) > 0) {
					FUNC15(NULL, E_WARNING, "SSL: Handshake timed out");
					return -1;
				}
			}

			if (n <= 0) {
				/* in case of SSL_ERROR_WANT_READ/WRITE, do not retry in non-blocking mode */
				retry = FUNC21(stream, n, blocked);
				if (retry) {
					/* wait until something interesting happens in the socket. It may be a
					 * timeout. Also consider the unlikely of possibility of a write block  */
					int err = FUNC4(sslsock->ssl_handle, n);
					struct timeval left_time;

					if (has_timeout) {
						left_time = FUNC22(*timeout, elapsed_time);
					}
					FUNC23(sslsock->s.socket, (err == SSL_ERROR_WANT_READ) ?
						(POLLIN|POLLPRI) : POLLOUT, has_timeout ? &left_time : NULL);
				}
			} else {
				retry = 0;
			}
		} while (retry);

		if (sslsock->s.is_blocked != blocked && SUCCESS == FUNC24(sslsock->s.socket, blocked)) {
			sslsock->s.is_blocked = blocked;
		}

		if (n == 1) {
			peer_cert = FUNC6(sslsock->ssl_handle);
			if (peer_cert && FUNC1(stream)) {
				cert_captured = FUNC17(stream, sslsock, peer_cert);
			}

			if (FAILURE == FUNC16(sslsock->ssl_handle, peer_cert, stream)) {
				FUNC10(sslsock->ssl_handle);
				n = -1;
			} else {
				sslsock->ssl_active = 1;

				if (FUNC1(stream)) {
					zval *val;
					if (NULL != (val = FUNC25(FUNC1(stream),
						"ssl", "capture_session_meta"))
					) {
						 FUNC14(E_DEPRECATED,
							"capture_session_meta is deprecated; its information is now available via stream_get_meta_data()"
                        );
					}

					if (val && FUNC27(val)) {
						zval meta_arr;
						FUNC12(&meta_arr, FUNC18(sslsock->ssl_handle));
						FUNC26(FUNC1(stream), "ssl", "session_meta", &meta_arr);
						FUNC28(&meta_arr);
					}
				}
			}
		} else if (errno == EAGAIN) {
			n = 0;
		} else {
			n = -1;
			/* We want to capture the peer cert even if verification fails*/
			peer_cert = FUNC6(sslsock->ssl_handle);
			if (peer_cert && FUNC1(stream)) {
				cert_captured = FUNC17(stream, sslsock, peer_cert);
			}
		}

		if (n && peer_cert && cert_captured == 0) {
			FUNC11(peer_cert);
		}

		return n;

	} else if (!cparam->inputs.activate && sslsock->ssl_active) {
		/* deactivate - common for server/client */
		FUNC10(sslsock->ssl_handle);
		sslsock->ssl_active = 0;
	}

	return -1;
}