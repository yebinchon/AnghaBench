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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PKCS7_BINARY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(php_stream * stream, SSL_CTX *ctx) /* {{{ */
{
	DH *dh;
	BIO* bio;
	zval *zdhpath;

	zdhpath = FUNC10(FUNC5(stream), "ssl", "dh_param");
	if (zdhpath == NULL) {
#if 0
	/* Coming in OpenSSL 1.1 ... eventually we'll want to enable this
	 * in the absence of an explicit dh_param.
	 */
	SSL_CTX_set_dh_auto(ctx, 1);
#endif
		return SUCCESS;
	}

	if (!FUNC11(zdhpath)) {
		return FAILURE;
	}

	bio = FUNC1(FUNC8(zdhpath), FUNC4(PKCS7_BINARY));

	if (bio == NULL) {
		FUNC9(NULL, E_WARNING, "invalid dh_param");
		return FAILURE;
	}

	dh = FUNC3(bio, NULL, NULL, NULL);
	FUNC0(bio);

	if (dh == NULL) {
		FUNC9(NULL, E_WARNING, "failed reading DH params");
		return FAILURE;
	}

	if (FUNC7(ctx, dh) < 0) {
		FUNC9(NULL, E_WARNING, "failed assigning DH params");
		FUNC2(dh);
		return FAILURE;
	}

	FUNC2(dh);

	return SUCCESS;
}