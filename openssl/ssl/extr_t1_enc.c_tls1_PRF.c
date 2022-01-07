
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int OSSL_PARAM ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int ERR_R_INTERNAL_ERROR ;
 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 scalar_t__ EVP_KDF_CTX_set_params (int *,int *) ;
 scalar_t__ EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 char* EVP_MD_name (int const*) ;
 int OSSL_KDF_NAME_TLS1_PRF ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_SECRET ;
 int OSSL_KDF_PARAM_SEED ;
 int OSSL_PARAM_construct_end () ;
 void* OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,scalar_t__) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS1_PRF ;
 int SSLerr (int ,int ) ;
 int SSLfatal (int *,int ,int ,int ) ;
 int * ssl_prf_md (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int tls1_PRF(SSL *s,
                    const void *seed1, size_t seed1_len,
                    const void *seed2, size_t seed2_len,
                    const void *seed3, size_t seed3_len,
                    const void *seed4, size_t seed4_len,
                    const void *seed5, size_t seed5_len,
                    const unsigned char *sec, size_t slen,
                    unsigned char *out, size_t olen, int fatal)
{
    const EVP_MD *md = ssl_prf_md(s);
    EVP_KDF *kdf;
    EVP_KDF_CTX *kctx = ((void*)0);
    OSSL_PARAM params[8], *p = params;
    const char *mdname;

    if (md == ((void*)0)) {

        if (fatal)
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                     ERR_R_INTERNAL_ERROR);
        else
            SSLerr(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
        return 0;
    }
    kdf = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_TLS1_PRF, ((void*)0));
    if (kdf == ((void*)0))
        goto err;
    kctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kctx == ((void*)0))
        goto err;
    mdname = EVP_MD_name(md);
    *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, strlen(mdname) + 1);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SECRET,
                                             (unsigned char *)sec,
                                             (size_t)slen);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                             (void *)seed1, (size_t)seed1_len);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                             (void *)seed2, (size_t)seed2_len);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                             (void *)seed3, (size_t)seed3_len);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                             (void *)seed4, (size_t)seed4_len);
    *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SEED,
                                             (void *)seed5, (size_t)seed5_len);
    *p = OSSL_PARAM_construct_end();
    if (EVP_KDF_CTX_set_params(kctx, params)
            && EVP_KDF_derive(kctx, out, olen)) {
        EVP_KDF_CTX_free(kctx);
        return 1;
    }

 err:
    if (fatal)
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS1_PRF,
                 ERR_R_INTERNAL_ERROR);
    else
        SSLerr(SSL_F_TLS1_PRF, ERR_R_INTERNAL_ERROR);
    EVP_KDF_CTX_free(kctx);
    return 0;
}
