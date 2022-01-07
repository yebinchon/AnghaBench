
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int derived_secret_label ;
typedef int SSL ;
typedef int OSSL_PARAM ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 scalar_t__ EVP_DigestInit_ex (int *,int const*,int *) ;
 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 scalar_t__ EVP_KDF_CTX_set_params (int *,int *) ;
 scalar_t__ EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 char* EVP_MD_name (int const*) ;
 int EVP_MD_size (int const*) ;
 int EVP_PKEY_HKDEF_MODE_EXTRACT_ONLY ;
 int OPENSSL_cleanse (unsigned char*,size_t) ;
 int OSSL_KDF_NAME_HKDF ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_MODE ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_int (int ,int*) ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,size_t) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,scalar_t__) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS13_GENERATE_SECRET ;
 int SSLfatal (int *,int ,int ,int ) ;
 unsigned char* default_zeros ;
 int ossl_assert (int) ;
 scalar_t__ strlen (char const*) ;
 int tls13_hkdf_expand (int *,int const*,unsigned char const*,unsigned char*,int,unsigned char*,size_t,unsigned char*,size_t,int) ;

int tls13_generate_secret(SSL *s, const EVP_MD *md,
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
    const char *mdname = EVP_MD_name(md);



    static const char derived_secret_label[] = "derived";

    unsigned char preextractsec[EVP_MAX_MD_SIZE];

    kdf = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_HKDF, ((void*)0));
    kctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kctx == ((void*)0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    mdleni = EVP_MD_size(md);

    if (!ossl_assert(mdleni >= 0)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);
        EVP_KDF_CTX_free(kctx);
        return 0;
    }
    mdlen = (size_t)mdleni;

    if (insecret == ((void*)0)) {
        insecret = default_zeros;
        insecretlen = mdlen;
    }
    if (prevsecret == ((void*)0)) {
        prevsecret = default_zeros;
        prevsecretlen = 0;
    } else {
        EVP_MD_CTX *mctx = EVP_MD_CTX_new();
        unsigned char hash[EVP_MAX_MD_SIZE];


        if (mctx == ((void*)0)
                || EVP_DigestInit_ex(mctx, md, ((void*)0)) <= 0
                || EVP_DigestFinal_ex(mctx, hash, ((void*)0)) <= 0) {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                     ERR_R_INTERNAL_ERROR);
            EVP_MD_CTX_free(mctx);
            EVP_KDF_CTX_free(kctx);
            return 0;
        }
        EVP_MD_CTX_free(mctx);


        if (!tls13_hkdf_expand(s, md, prevsecret,
                               (unsigned char *)derived_secret_label,
                               sizeof(derived_secret_label) - 1, hash, mdlen,
                               preextractsec, mdlen, 1)) {

            EVP_KDF_CTX_free(kctx);
            return 0;
        }

        prevsecret = preextractsec;
        prevsecretlen = mdlen;
    }

    *p++ = OSSL_PARAM_construct_int(OSSL_KDF_PARAM_MODE, &mode);
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, strlen(mdname) + 1);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)insecret,
                                             insecretlen);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)prevsecret,
                                             prevsecretlen);
    *p++ = OSSL_PARAM_construct_end();

    ret = EVP_KDF_CTX_set_params(kctx, params) <= 0
        || EVP_KDF_derive(kctx, outsecret, mdlen) <= 0;

    if (ret != 0)
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_GENERATE_SECRET,
                 ERR_R_INTERNAL_ERROR);

    EVP_KDF_CTX_free(kctx);
    if (prevsecret == preextractsec)
        OPENSSL_cleanse(preextractsec, mdlen);
    return ret == 0;
}
