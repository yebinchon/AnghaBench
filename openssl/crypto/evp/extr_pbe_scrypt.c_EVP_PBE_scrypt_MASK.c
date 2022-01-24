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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_PBE_SCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_R_PARAMETER_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_SCRYPT ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_PASSWORD ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SCRYPT_MAXMEM ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SCRYPT_N ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SCRYPT_P ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SCRYPT_R ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 void* FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ SCRYPT_MAX_MEM ; 
 scalar_t__ UINT32_MAX ; 

int FUNC10(const char *pass, size_t passlen,
                   const unsigned char *salt, size_t saltlen,
                   uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
                   unsigned char *key, size_t keylen)
{
    const char *empty = "";
    int rv = 1;
    EVP_KDF *kdf;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[7], *z = params;

    if (r > UINT32_MAX || p > UINT32_MAX) {
        FUNC6(EVP_F_EVP_PBE_SCRYPT, EVP_R_PARAMETER_TOO_LARGE);
        return 0;
    }

    /* Maintain existing behaviour. */
    if (pass == NULL) {
        pass = empty;
        passlen = 0;
    }
    if (salt == NULL) {
        salt = (const unsigned char *)empty;
        saltlen = 0;
    }
    if (maxmem == 0)
        maxmem = SCRYPT_MAX_MEM;

    kdf = FUNC4(NULL, OSSL_KDF_NAME_SCRYPT, NULL);
    kctx = FUNC1(kdf);
    FUNC5(kdf);
    if (kctx == NULL)
        return 0;

    *z++ = FUNC8(OSSL_KDF_PARAM_PASSWORD,
                                              (unsigned char *)pass,
                                                      passlen);
    *z++ = FUNC8(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)salt, saltlen);
    *z++ = FUNC9(OSSL_KDF_PARAM_SCRYPT_N, &N);
    *z++ = FUNC9(OSSL_KDF_PARAM_SCRYPT_R, &r);
    *z++ = FUNC9(OSSL_KDF_PARAM_SCRYPT_P, &p);
    *z++ = FUNC9(OSSL_KDF_PARAM_SCRYPT_MAXMEM, &maxmem);
    *z = FUNC7();
    if (FUNC2(kctx, params) != 1
            || FUNC3(kctx, key, keylen) != 1)
        rv = 0;

    FUNC0(kctx);
    return rv;
}