#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ abstract; } ;
typedef  TYPE_3__ php_stream ;
struct TYPE_9__ {int socket; } ;
struct TYPE_8__ {TYPE_4__* data; } ;
struct TYPE_11__ {unsigned int sni_cert_count; struct TYPE_11__* reneg; struct TYPE_11__* url_name; struct TYPE_11__* sni_certs; struct TYPE_11__* name; int /*<<< orphan*/ * ctx; TYPE_2__ s; TYPE_1__ alpn_ctx; int /*<<< orphan*/ * ssl_handle; scalar_t__ ssl_active; } ;
typedef  TYPE_4__ php_openssl_netstream_data_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SHUT_RD ; 
 void* SOCK_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(php_stream *stream, int close_handle) /* {{{ */
{
	php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;
#ifdef PHP_WIN32
	int n;
#endif
	unsigned i;

	if (close_handle) {
		if (sslsock->ssl_active) {
			FUNC2(sslsock->ssl_handle);
			sslsock->ssl_active = 0;
		}
		if (sslsock->ssl_handle) {
			FUNC1(sslsock->ssl_handle);
			sslsock->ssl_handle = NULL;
		}
		if (sslsock->ctx) {
			FUNC0(sslsock->ctx);
			sslsock->ctx = NULL;
		}
#ifdef HAVE_TLS_ALPN
		if (sslsock->alpn_ctx.data) {
			pefree(sslsock->alpn_ctx.data, php_stream_is_persistent(stream));
		}
#endif
#ifdef PHP_WIN32
		if (sslsock->s.socket == -1)
			sslsock->s.socket = SOCK_ERR;
#endif
		if (sslsock->s.socket != SOCK_ERR) {
#ifdef PHP_WIN32
			/* prevent more data from coming in */
			shutdown(sslsock->s.socket, SHUT_RD);

			/* try to make sure that the OS sends all data before we close the connection.
			 * Essentially, we are waiting for the socket to become writeable, which means
			 * that all pending data has been sent.
			 * We use a small timeout which should encourage the OS to send the data,
			 * but at the same time avoid hanging indefinitely.
			 * */
			do {
				n = php_pollfd_for_ms(sslsock->s.socket, POLLOUT, 500);
			} while (n == -1 && php_socket_errno() == EINTR);
#endif
			FUNC3(sslsock->s.socket);
			sslsock->s.socket = SOCK_ERR;
		}
	}

	if (sslsock->sni_certs) {
		for (i = 0; i < sslsock->sni_cert_count; i++) {
			if (sslsock->sni_certs[i].ctx) {
				FUNC0(sslsock->sni_certs[i].ctx);
				FUNC4(sslsock->sni_certs[i].name, FUNC7(stream));
			}
		}
		FUNC4(sslsock->sni_certs, FUNC7(stream));
		sslsock->sni_certs = NULL;
	}

	if (sslsock->url_name) {
		FUNC4(sslsock->url_name, FUNC7(stream));
	}

	if (sslsock->reneg) {
		FUNC4(sslsock->reneg, FUNC7(stream));
	}

	FUNC4(sslsock, FUNC7(stream));

	return 0;
}