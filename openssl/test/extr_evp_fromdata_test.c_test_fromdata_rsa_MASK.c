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
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 size_t D ; 
 size_t DP ; 
 size_t DQ ; 
 size_t E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t N ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_COEFFICIENT ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_D ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_E ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_EXPONENT ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_FACTOR ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_RSA_N ; 
 size_t P ; 
 size_t Q ; 
 size_t QINV ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
    int ret = 0;
    EVP_PKEY_CTX *ctx = NULL;
    EVP_PKEY *pk = NULL;
    /*
     * 32-bit RSA key, extracted from this command,
     * executed with OpenSSL 1.0.2:
     *
     * openssl genrsa 32 | openssl rsa -text
     */
    static unsigned long key_numbers[] = {
        0xbc747fc5,              /* N */
        0x10001,                 /* E */
        0x7b133399,              /* D */
        0xe963,                  /* P */
        0xceb7,                  /* Q */
        0x8599,                  /* DP */
        0xbd87,                  /* DQ */
        0xcc3b,                  /* QINV */
    };
    OSSL_PARAM fromdata_params[] = {
        FUNC5(OSSL_PKEY_PARAM_RSA_N, &key_numbers[N]),
        FUNC5(OSSL_PKEY_PARAM_RSA_E, &key_numbers[E]),
        FUNC5(OSSL_PKEY_PARAM_RSA_D, &key_numbers[D]),
        FUNC5(OSSL_PKEY_PARAM_RSA_FACTOR, &key_numbers[P]),
        FUNC5(OSSL_PKEY_PARAM_RSA_FACTOR, &key_numbers[Q]),
        FUNC5(OSSL_PKEY_PARAM_RSA_EXPONENT, &key_numbers[DP]),
        FUNC5(OSSL_PKEY_PARAM_RSA_EXPONENT, &key_numbers[DQ]),
        FUNC5(OSSL_PKEY_PARAM_RSA_COEFFICIENT, &key_numbers[QINV]),
        OSSL_PARAM_END
    };

    if (!FUNC6(ctx = FUNC1(NULL, "RSA", NULL)))
        goto err;

    if (!FUNC7(FUNC4(ctx))
        || !FUNC7(FUNC3(ctx, &pk, fromdata_params)))
        goto err;

    /*
     * TODO(3.0) We can't do much more at this point without using internals,
     * because RSA functionality is still missing.  When the time comes, it
     * would be nice to try and do something "useful" with this key, such
     * as signing a small piece of data.
     */
    ret = 1;

 err:
    FUNC2(pk);
    FUNC0(ctx);

    return ret;
}