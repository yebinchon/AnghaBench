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
typedef  int /*<<< orphan*/  derived_secret_label ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 char* FUNC10 (int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*) ; 
 int EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_HKDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_MODE ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int*) ; 
 void* FUNC15 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_GENERATE_SECRET ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* default_zeros ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char const*,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t,int) ; 

int FUNC21(SSL *s, const EVP_MD *md,
                          const unsigned char *prevsecret,
                          const unsigned char *insecret,
                          size_t insecretlen,
                          unsigned char *outsecret)
{
    size_t mdlen, prevsecretlen;
    int mdleni;
    int ret;
    EVP_KDF *kdf;
    EVP_KDF_CTX *kctx;
    OSSL_PARAM params[5], *p = params;
    int mode = EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY;
    const char *mdname = FUNC10(md);
#ifdef CHARSET_EBCDIC
    static const char derived_secret_label[] = { 0x64, 0x65, 0x72, 0x69, 0x76, 0x65, 0x64, 0x00 };
#else
    static const char derived_secret_label[] = "derived";
#endif
    unsigned char preextractsec[EVP_MAX_MD_SIZE];

    kdf = FUNC6(NULL, OSSL_KDF_NAME_HKDF, NULL);
    kctx = FUNC3(kdf);
    FUNC7(kdf);
    if (kctx == NULL) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    mdleni = FUNC11(md);
    /* Ensure cast to size_t is safe */
    if (!FUNC18(mdleni >= 0)) {
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        FUNC2(kctx);
        return 0;
    }
    mdlen = (size_t)mdleni;

    if (insecret == NULL) {
        insecret = default_zeros;
        insecretlen = mdlen;
    }
    if (prevsecret == NULL) {
        prevsecret = default_zeros;
        prevsecretlen = 0;
    } else {
        EVP_MD_CTX *mctx = FUNC9();
        unsigned char hash[EVP_MAX_MD_SIZE];

        /* The pre-extract derive step uses a hash of no messages */
        if (mctx == NULL
                || FUNC1(mctx, md, NULL) <= 0
                || FUNC0(mctx, hash, NULL) <= 0) {
            FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                     ERR_R_INTERNAL_ERROR);
            FUNC8(mctx);
            FUNC2(kctx);
            return 0;
        }
        FUNC8(mctx);

        /* Generate the pre-extract secret */
        if (!FUNC20(s, md, prevsecret,
                               (unsigned char *)derived_secret_label,
                               sizeof(derived_secret_label) - 1, hash, mdlen,
                               preextractsec, mdlen, 1)) {
            /* SSLfatal() already called */
            FUNC2(kctx);
            return 0;
        }

        prevsecret = preextractsec;
        prevsecretlen = mdlen;
    }

    *p++ = FUNC14(OSSL_KDF_PARAM_MODE, &mode);
    *p++ = FUNC16(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, FUNC19(mdname) + 1);
    *p++ = FUNC15(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)insecret,
                                             insecretlen);
    *p++ = FUNC15(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)prevsecret,
                                             prevsecretlen);
    *p++ = FUNC13();

    ret = FUNC4(kctx, params) <= 0
        || FUNC5(kctx, outsecret, mdlen) <= 0;

    if (ret != 0)
        FUNC17(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);

    FUNC2(kctx);
    if (prevsecret == preextractsec)
        FUNC12(preextractsec, mdlen);
    return ret == 0;
}