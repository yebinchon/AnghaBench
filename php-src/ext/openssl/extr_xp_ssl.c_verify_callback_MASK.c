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
typedef  scalar_t__ zend_ulong ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 scalar_t__ OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_V_ERR_CERT_CHAIN_TOO_LONG ; 
 int X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(int preverify_ok, X509_STORE_CTX *ctx) /* {{{ */
{
	php_stream *stream;
	SSL *ssl;
	int err, depth, ret;
	zval *val;
	zend_ulong allowed_depth = OPENSSL_DEFAULT_STREAM_VERIFY_DEPTH;


	ret = preverify_ok;

	/* determine the status for the current cert */
	err = FUNC4(ctx);
	depth = FUNC5(ctx);

	/* conjure the stream & context to use */
	ssl = FUNC6(ctx, FUNC3());
	stream = (php_stream*)FUNC2(ssl, FUNC8());

	/* if allow_self_signed is set, make sure that verification succeeds */
	if (err == X509_V_ERR_DEPTH_ZERO_SELF_SIGNED_CERT &&
		FUNC0("allow_self_signed") &&
		FUNC9(val)
	) {
		ret = 1;
	}

	/* check the depth */
	FUNC1("verify_depth", allowed_depth);
	if ((zend_ulong)depth > allowed_depth) {
		ret = 0;
		FUNC7(ctx, X509_V_ERR_CERT_CHAIN_TOO_LONG);
	}

	return ret;
}