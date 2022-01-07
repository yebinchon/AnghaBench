
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int constant_len; int constant; int key_len; int key; int cipher; int provctx; } ;
typedef int OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ KRB5KDF_CTX ;


 int OSSL_KDF_PARAM_CONSTANT ;
 int OSSL_KDF_PARAM_KEY ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int krb5kdf_set_membuf (int *,int *,int const*) ;
 int ossl_prov_cipher_load_from_params (int *,int const*,int *) ;

__attribute__((used)) static int krb5kdf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KRB5KDF_CTX *ctx = vctx;
    OPENSSL_CTX *provctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);

    if (!ossl_prov_cipher_load_from_params(&ctx->cipher, params, provctx))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_KEY)) != ((void*)0))
        if (!krb5kdf_set_membuf(&ctx->key, &ctx->key_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_CONSTANT))
        != ((void*)0))
        if (!krb5kdf_set_membuf(&ctx->constant, &ctx->constant_len, p))
            return 0;

    return 1;
}
