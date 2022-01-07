
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int EVP_MD ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 scalar_t__ EVP_KDF_CTX_set_params (int *,int *) ;
 scalar_t__ EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 char* EVP_MD_name (int const*) ;
 int OSSL_KDF_NAME_X963KDF ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 void* OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 int OSSL_PARAM_construct_utf8_string (int ,char*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int ecdh_KDF_X9_63(unsigned char *out, size_t outlen,
                   const unsigned char *Z, size_t Zlen,
                   const unsigned char *sinfo, size_t sinfolen,
                   const EVP_MD *md)
{
    int ret = 0;
    EVP_KDF_CTX *kctx = ((void*)0);
    OSSL_PARAM params[4], *p = params;
    const char *mdname = EVP_MD_name(md);
    EVP_KDF *kdf = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_X963KDF, ((void*)0));

    if ((kctx = EVP_KDF_CTX_new(kdf)) != ((void*)0)) {
        *p++ = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                                (char *)mdname,
                                                strlen(mdname) + 1);
        *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_KEY,
                                                 (void *)Z, Zlen);
        *p++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_INFO,
                                                 (void *)sinfo, sinfolen);
        *p = OSSL_PARAM_construct_end();

        ret = EVP_KDF_CTX_set_params(kctx, params) > 0
            && EVP_KDF_derive(kctx, out, outlen) > 0;
        EVP_KDF_CTX_free(kctx);
    }
    EVP_KDF_free(kdf);
    return ret;
}
