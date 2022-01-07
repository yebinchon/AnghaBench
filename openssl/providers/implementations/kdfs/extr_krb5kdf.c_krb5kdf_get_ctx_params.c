
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cipher; } ;
typedef int OSSL_PARAM ;
typedef TYPE_1__ KRB5KDF_CTX ;
typedef int EVP_CIPHER ;


 size_t EVP_CIPHER_key_length (int const*) ;
 size_t EVP_MAX_KEY_LENGTH ;
 int OSSL_KDF_PARAM_SIZE ;
 int * OSSL_PARAM_locate (int *,int ) ;
 int OSSL_PARAM_set_size_t (int *,size_t) ;
 int * ossl_prov_cipher_cipher (int *) ;

__attribute__((used)) static int krb5kdf_get_ctx_params(void *vctx, OSSL_PARAM params[])
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;
    const EVP_CIPHER *cipher;
    size_t len;
    OSSL_PARAM *p;

    cipher = ossl_prov_cipher_cipher(&ctx->cipher);
    if (cipher)
        len = EVP_CIPHER_key_length(cipher);
    else
        len = EVP_MAX_KEY_LENGTH;

    if ((p = OSSL_PARAM_locate(params, OSSL_KDF_PARAM_SIZE)) != ((void*)0))
        return OSSL_PARAM_set_size_t(p, len);
    return -2;
}
