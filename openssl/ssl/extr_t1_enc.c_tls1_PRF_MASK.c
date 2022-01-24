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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_TLS1_PRF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SECRET ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SEED ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS1_PRF ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*) ; 

__attribute__((used)) static int FUNC14(SSL *s,
                    const void *seed1, size_t seed1_len,
                    const void *seed2, size_t seed2_len,
                    const void *seed3, size_t seed3_len,
                    const void *seed4, size_t seed4_len,
                    const void *seed5, size_t seed5_len,
                    const unsigned char *sec, size_t slen,
                    unsigned char *out, size_t olen, int fatal)
{
    const EVP_MD *md = FUNC12(s);
    EVP_KDF *kdf;
    EVP_KDF_CTX *kctx = NULL;
    OSSL_PARAM params[8], *p = params;
    const char *mdname;

    if (md == NULL) {
        /* Should never happen */
        if (fatal)
            FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC10(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    kdf = FUNC4(NULL, OSSL_KDF_NAME_TLS1_PRF, NULL);
    if (kdf == NULL)
        goto err;
    kctx = FUNC1(kdf);
    FUNC5(kdf);
    if (kctx == NULL)
        goto err;
    mdname = FUNC6(md);
    *p++ = FUNC9(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, FUNC13(mdname) + 1);
    *p++ = FUNC8(OSSL_KDF_PARAM_SECRET,
                                             (unsigned char *)sec,
                                             (size_t)slen);
    *p++ = FUNC8(OSSL_KDF_PARAM_SEED,
                                             (void *)seed1, (size_t)seed1_len);
    *p++ = FUNC8(OSSL_KDF_PARAM_SEED,
                                             (void *)seed2, (size_t)seed2_len);
    *p++ = FUNC8(OSSL_KDF_PARAM_SEED,
                                             (void *)seed3, (size_t)seed3_len);
    *p++ = FUNC8(OSSL_KDF_PARAM_SEED,
                                             (void *)seed4, (size_t)seed4_len);
    *p++ = FUNC8(OSSL_KDF_PARAM_SEED,
                                             (void *)seed5, (size_t)seed5_len);
    *p = FUNC7();
    if (FUNC2(kctx, params)
            && FUNC3(kctx, out, olen)) {
        FUNC0(kctx);
        return 1;
    }

 err:
    if (fatal)
        FUNC11(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                 ERR_R_INTERNAL_ERROR);
    else
        FUNC10(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
    FUNC0(kctx);
    return 0;
}