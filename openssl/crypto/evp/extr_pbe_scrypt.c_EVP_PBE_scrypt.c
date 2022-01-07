
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int OSSL_PARAM ;
typedef int EVP_KDF_CTX ;
typedef int EVP_KDF ;


 int EVP_F_EVP_PBE_SCRYPT ;
 int EVP_KDF_CTX_free (int *) ;
 int * EVP_KDF_CTX_new (int *) ;
 int EVP_KDF_CTX_set_params (int *,int *) ;
 int EVP_KDF_derive (int *,unsigned char*,size_t) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 int EVP_R_PARAMETER_TOO_LARGE ;
 int EVPerr (int ,int ) ;
 int OSSL_KDF_NAME_SCRYPT ;
 int OSSL_KDF_PARAM_PASSWORD ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_KDF_PARAM_SCRYPT_MAXMEM ;
 int OSSL_KDF_PARAM_SCRYPT_N ;
 int OSSL_KDF_PARAM_SCRYPT_P ;
 int OSSL_KDF_PARAM_SCRYPT_R ;
 int OSSL_PARAM_construct_end () ;
 void* OSSL_PARAM_construct_octet_string (int ,unsigned char*,size_t) ;
 void* OSSL_PARAM_construct_uint64 (int ,scalar_t__*) ;
 scalar_t__ SCRYPT_MAX_MEM ;
 scalar_t__ UINT32_MAX ;

int EVP_PBE_scrypt(const char *pass, size_t passlen,
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
        EVPerr(EVP_F_EVP_PBE_SCRYPT, EVP_R_PARAMETER_TOO_LARGE);
        return 0;
    }


    if (pass == ((void*)0)) {
        pass = empty;
        passlen = 0;
    }
    if (salt == ((void*)0)) {
        salt = (const unsigned char *)empty;
        saltlen = 0;
    }
    if (maxmem == 0)
        maxmem = SCRYPT_MAX_MEM;

    kdf = EVP_KDF_fetch(((void*)0), OSSL_KDF_NAME_SCRYPT, ((void*)0));
    kctx = EVP_KDF_CTX_new(kdf);
    EVP_KDF_free(kdf);
    if (kctx == ((void*)0))
        return 0;

    *z++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_PASSWORD,
                                              (unsigned char *)pass,
                                                      passlen);
    *z++ = OSSL_PARAM_construct_octet_string(OSSL_KDF_PARAM_SALT,
                                             (unsigned char *)salt, saltlen);
    *z++ = OSSL_PARAM_construct_uint64(OSSL_KDF_PARAM_SCRYPT_N, &N);
    *z++ = OSSL_PARAM_construct_uint64(OSSL_KDF_PARAM_SCRYPT_R, &r);
    *z++ = OSSL_PARAM_construct_uint64(OSSL_KDF_PARAM_SCRYPT_P, &p);
    *z++ = OSSL_PARAM_construct_uint64(OSSL_KDF_PARAM_SCRYPT_MAXMEM, &maxmem);
    *z = OSSL_PARAM_construct_end();
    if (EVP_KDF_CTX_set_params(kctx, params) != 1
            || EVP_KDF_derive(kctx, key, keylen) != 1)
        rv = 0;

    EVP_KDF_CTX_free(kctx);
    return rv;
}
