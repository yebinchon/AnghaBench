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
typedef  int /*<<< orphan*/  mbedtls_pk_context ;
typedef  int /*<<< orphan*/  mbedtls_ecp_group_id ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_PK_ECKEY ; 
 int /*<<< orphan*/  MBEDTLS_PK_RSA ; 
 int /*<<< orphan*/  _urandom ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(mbedtls_pk_context *key, bool rsa, int ksize, int exp,
		    mbedtls_ecp_group_id curve, bool pem)
{
	FUNC5(key);
	if (rsa) {
		FUNC1(stderr, "Generating RSA private key, %i bit long modulus\n", ksize);
		FUNC7(key, FUNC4(MBEDTLS_PK_RSA));
		if (!FUNC8(FUNC6(*key), _urandom, NULL, ksize, exp))
			return;
	} else {
		FUNC1(stderr, "Generating EC private key\n");
		FUNC7(key, FUNC4(MBEDTLS_PK_ECKEY));
		if (!FUNC2(curve, FUNC3(*key), _urandom, NULL))
			return;
	}
	FUNC1(stderr, "error: key generation failed\n");
	FUNC0(1);
}