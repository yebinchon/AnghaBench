#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_long ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_5__ {int /*<<< orphan*/  ssl_handle; TYPE_1__* reneg; } ;
typedef  TYPE_2__ php_openssl_netstream_data_t ;
typedef  int /*<<< orphan*/  php_openssl_handshake_bucket_t ;
struct TYPE_4__ {scalar_t__ should_close; scalar_t__ tokens; scalar_t__ prev_handshake; scalar_t__ window; scalar_t__ limit; } ;

/* Variables and functions */
 scalar_t__ OPENSSL_DEFAULT_RENEG_LIMIT ; 
 scalar_t__ OPENSSL_DEFAULT_RENEG_WINDOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  php_openssl_info_callback ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(php_stream *stream, php_openssl_netstream_data_t *sslsock) /* {{{ */
{
	zval *val;
	zend_long limit = OPENSSL_DEFAULT_RENEG_LIMIT;
	zend_long window = OPENSSL_DEFAULT_RENEG_WINDOW;

	if (FUNC0(stream) &&
		NULL != (val = FUNC3(FUNC0(stream), "ssl", "reneg_limit"))
	) {
		limit = FUNC5(val);
	}

	/* No renegotiation rate-limiting */
	if (limit < 0) {
		return;
	}

	if (FUNC0(stream) &&
		NULL != (val = FUNC3(FUNC0(stream), "ssl", "reneg_window"))
	) {
		window = FUNC5(val);
	}

	sslsock->reneg = (void*)FUNC2(sizeof(php_openssl_handshake_bucket_t),
		FUNC4(stream)
	);

	sslsock->reneg->limit = limit;
	sslsock->reneg->window = window;
	sslsock->reneg->prev_handshake = 0;
	sslsock->reneg->tokens = 0;
	sslsock->reneg->should_close = 0;

	FUNC1(sslsock->ssl_handle, php_openssl_info_callback);
}