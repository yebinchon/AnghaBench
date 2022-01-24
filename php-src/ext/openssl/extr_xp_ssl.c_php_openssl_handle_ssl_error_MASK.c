#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_bool ;
struct TYPE_12__ {int /*<<< orphan*/  s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ smart_str ;
struct TYPE_13__ {int eof; scalar_t__ abstract; } ;
typedef  TYPE_3__ php_stream ;
struct TYPE_11__ {int is_blocked; } ;
struct TYPE_14__ {int /*<<< orphan*/  ssl_handle; TYPE_1__ s; } ;
typedef  TYPE_4__ php_openssl_netstream_data_t ;
typedef  int /*<<< orphan*/  esbuf ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,char*,int) ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  E_WARNING ; 
#define  SSL_ERROR_SYSCALL 132 
#define  SSL_ERROR_WANT_READ 131 
#define  SSL_ERROR_WANT_WRITE 130 
#define  SSL_ERROR_ZERO_RETURN 129 
 int SSL_RECEIVED_SHUTDOWN ; 
#define  SSL_R_NO_SHARED_CIPHER 128 
 int SSL_SENT_SHUTDOWN ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(php_stream *stream, int nr_bytes, zend_bool is_init) /* {{{ */
{
	php_openssl_netstream_data_t *sslsock = (php_openssl_netstream_data_t*)stream->abstract;
	int err = FUNC4(sslsock->ssl_handle, nr_bytes);
	char esbuf[512];
	smart_str ebuf = {0};
	unsigned long ecode;
	int retry = 1;

	switch(err) {
		case SSL_ERROR_ZERO_RETURN:
			/* SSL terminated (but socket may still be active) */
			retry = 0;
			break;
		case SSL_ERROR_WANT_READ:
		case SSL_ERROR_WANT_WRITE:
			/* re-negotiation, or perhaps the SSL layer needs more
			 * packets: retry in next iteration */
			errno = EAGAIN;
			retry = is_init ? 1 : sslsock->s.is_blocked;
			break;
		case SSL_ERROR_SYSCALL:
			if (FUNC3() == 0) {
				if (nr_bytes == 0) {
					if (!FUNC9(stream) && FUNC2() != 0) {
						FUNC8(NULL, E_WARNING, "SSL: fatal protocol error");
					}
					FUNC5(sslsock->ssl_handle, SSL_SENT_SHUTDOWN|SSL_RECEIVED_SHUTDOWN);
					stream->eof = 1;
					retry = 0;
				} else {
					char *estr = FUNC11(FUNC10(), NULL, 0);

					FUNC8(NULL, E_WARNING,
							"SSL: %s", estr);

					FUNC7(estr);
					retry = 0;
				}
				break;
			}


			/* fall through */
		default:
			/* some other error */
			ecode = FUNC2();

			switch (FUNC0(ecode)) {
				case SSL_R_NO_SHARED_CIPHER:
					FUNC8(NULL, E_WARNING,
							"SSL_R_NO_SHARED_CIPHER: no suitable shared cipher could be used.  "
							"This could be because the server is missing an SSL certificate "
							"(local_cert context option)");
					retry = 0;
					break;

				default:
					do {
						/* NULL is automatically added */
						FUNC1(ecode, esbuf, sizeof(esbuf));
						if (ebuf.s) {
							FUNC13(&ebuf, '\n');
						}
						FUNC14(&ebuf, esbuf);
					} while ((ecode = FUNC2()) != 0);

					FUNC12(&ebuf);

					FUNC8(NULL, E_WARNING,
							"SSL operation failed with code %d. %s%s",
							err,
							ebuf.s ? "OpenSSL Error messages:\n" : "",
							ebuf.s ? FUNC6(ebuf.s) : "");
					if (ebuf.s) {
						FUNC15(&ebuf);
					}
			}

			retry = 0;
			errno = 0;
	}
	return retry;
}