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
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int NID_X9_62_prime256v1 ; 
 int NID_undef ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(php_stream *stream, SSL_CTX *ctx) /* {{{ */
{
	zval *zvcurve;
	int curve_nid;
	EC_KEY *ecdh;

	zvcurve = FUNC8(FUNC3(stream), "ssl", "ecdh_curve");
	if (zvcurve == NULL) {
#if OPENSSL_VERSION_NUMBER >= 0x10002000L
		SSL_CTX_set_ecdh_auto(ctx, 1);
		return SUCCESS;
#else
		curve_nid = NID_X9_62_prime256v1;
#endif
	} else {
		if (!FUNC9(zvcurve)) {
			return FAILURE;
		}

		curve_nid = FUNC2(FUNC6(zvcurve));
		if (curve_nid == NID_undef) {
			FUNC7(NULL, E_WARNING, "invalid ecdh_curve specified");
			return FAILURE;
		}
	}

	ecdh = FUNC1(curve_nid);
	if (ecdh == NULL) {
		FUNC7(NULL, E_WARNING, "failed generating ECDH curve");
		return FAILURE;
	}

	FUNC5(ctx, ecdh);
	FUNC0(ecdh);

	return SUCCESS;
}