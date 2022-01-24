#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long SSL_OP_CIPHER_SERVER_PREFERENCE ; 
 long SSL_OP_SINGLE_DH_USE ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  php_openssl_tmp_rsa_cb ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(php_stream *stream, SSL_CTX *ctx) /* {{{ */
{
	zval *zv;
	long ssl_ctx_options = FUNC1(ctx);

#if defined(HAVE_ECDH) && PHP_OPENSSL_API_VERSION < 0x10100
	if (php_openssl_set_server_ecdh_curve(stream, ctx) == FAILURE) {
		return FAILURE;
	}
#endif

#if PHP_OPENSSL_API_VERSION < 0x10100
	FUNC3(ctx, php_openssl_tmp_rsa_cb);
#endif
	/* We now use php_openssl_tmp_rsa_cb to generate a key of appropriate size whenever necessary */
	if (FUNC7(FUNC0(stream), "ssl", "rsa_key_size") != NULL) {
		FUNC4(NULL, E_WARNING, "rsa_key_size context option has been removed");
	}

	FUNC5(stream, ctx);
	zv = FUNC7(FUNC0(stream), "ssl", "single_dh_use");
	if (zv == NULL || FUNC8(zv)) {
		ssl_ctx_options |= SSL_OP_SINGLE_DH_USE;
	}

	zv = FUNC7(FUNC0(stream), "ssl", "honor_cipher_order");
	if (zv == NULL || FUNC8(zv)) {
		ssl_ctx_options |= SSL_OP_CIPHER_SERVER_PREFERENCE;
	}

	FUNC2(ctx, ssl_ctx_options);

	return SUCCESS;
}