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
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
#define  EVP_PKEY_DH 136 
#define  EVP_PKEY_DSA 135 
#define  EVP_PKEY_DSA1 134 
#define  EVP_PKEY_DSA2 133 
#define  EVP_PKEY_DSA3 132 
#define  EVP_PKEY_DSA4 131 
#define  EVP_PKEY_EC 130 
#define  EVP_PKEY_RSA 129 
#define  EVP_PKEY_RSA2 128 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_WARNING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(EVP_PKEY* pkey)
{
	FUNC11(pkey != NULL);

	switch (FUNC9(pkey)) {
		case EVP_PKEY_RSA:
		case EVP_PKEY_RSA2:
			{
				RSA *rsa = FUNC8(pkey);
				if (rsa != NULL) {
					const BIGNUM *p, *q;

					FUNC10(rsa, &p, &q);
					 if (p == NULL || q == NULL) {
						return 0;
					 }
				}
			}
			break;
		case EVP_PKEY_DSA:
		case EVP_PKEY_DSA1:
		case EVP_PKEY_DSA2:
		case EVP_PKEY_DSA3:
		case EVP_PKEY_DSA4:
			{
				DSA *dsa = FUNC6(pkey);
				if (dsa != NULL) {
					const BIGNUM *p, *q, *g, *pub_key, *priv_key;

					FUNC3(dsa, &p, &q, &g);
					if (p == NULL || q == NULL) {
						return 0;
					}

					FUNC2(dsa, &pub_key, &priv_key);
					if (priv_key == NULL) {
						return 0;
					}
				}
			}
			break;
		case EVP_PKEY_DH:
			{
				DH *dh = FUNC5(pkey);
				if (dh != NULL) {
					const BIGNUM *p, *q, *g, *pub_key, *priv_key;

					FUNC1(dh, &p, &q, &g);
					if (p == NULL) {
						return 0;
					}

					FUNC0(dh, &pub_key, &priv_key);
					if (priv_key == NULL) {
						return 0;
					}
				}
			}
			break;
#ifdef HAVE_EVP_PKEY_EC
		case EVP_PKEY_EC:
			{
				EC_KEY *ec = EVP_PKEY_get0_EC_KEY(pkey);
				if (ec != NULL && NULL == EC_KEY_get0_private_key(ec)) {
					return 0;
				}
			}
			break;
#endif
		default:
			FUNC12(NULL, E_WARNING, "key type not supported in this PHP build!");
			break;
	}
	return 1;
}