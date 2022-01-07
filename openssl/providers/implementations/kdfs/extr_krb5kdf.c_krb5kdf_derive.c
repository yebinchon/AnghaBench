
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int constant_len; int * constant; int key_len; int * key; int cipher; } ;
typedef TYPE_1__ KRB5KDF_CTX ;
typedef int EVP_CIPHER ;
typedef int ENGINE ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int KRB5KDF (int const*,int *,int *,int ,int *,int ,unsigned char*,size_t) ;
 int PROV_R_MISSING_CIPHER ;
 int PROV_R_MISSING_CONSTANT ;
 int PROV_R_MISSING_KEY ;
 int * ossl_prov_cipher_cipher (int *) ;
 int * ossl_prov_cipher_engine (int *) ;

__attribute__((used)) static int krb5kdf_derive(void *vctx, unsigned char *key,
                              size_t keylen)
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;
    const EVP_CIPHER *cipher = ossl_prov_cipher_cipher(&ctx->cipher);
    ENGINE *engine = ossl_prov_cipher_engine(&ctx->cipher);

    if (cipher == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_CIPHER);
        return 0;
    }
    if (ctx->key == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }
    if (ctx->constant == ((void*)0)) {
        ERR_raise(ERR_LIB_PROV, PROV_R_MISSING_CONSTANT);
        return 0;
    }
    return KRB5KDF(cipher, engine, ctx->key, ctx->key_len,
                   ctx->constant, ctx->constant_len,
                   key, keylen);
}
