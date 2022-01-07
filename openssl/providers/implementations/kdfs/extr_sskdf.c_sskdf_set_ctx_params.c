
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t out_len; int salt_len; int salt; int info_len; int info; int secret_len; int secret; int macctx; int digest; int provctx; } ;
typedef int OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ KDF_SSKDF ;


 int OSSL_KDF_PARAM_INFO ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_MAC_SIZE ;
 int OSSL_KDF_PARAM_SALT ;
 int OSSL_KDF_PARAM_SECRET ;
 int OSSL_PARAM_get_size_t (int const*,size_t*) ;
 int * OSSL_PARAM_locate_const (int const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int ossl_prov_digest_load_from_params (int *,int const*,int *) ;
 int ossl_prov_macctx_load_from_params (int *,int const*,int *,int *,int *,int *) ;
 int sskdf_set_buffer (int *,int *,int const*) ;

__attribute__((used)) static int sskdf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_SSKDF *ctx = vctx;
    OPENSSL_CTX *libctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);
    size_t sz;

    if (!ossl_prov_digest_load_from_params(&ctx->digest, params, libctx))
        return 0;

    if (!ossl_prov_macctx_load_from_params(&ctx->macctx, params,
                                           ((void*)0), ((void*)0), ((void*)0), libctx))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SECRET)) != ((void*)0)
        || (p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_KEY)) != ((void*)0))
        if (!sskdf_set_buffer(&ctx->secret, &ctx->secret_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_INFO)) != ((void*)0))
        if (!sskdf_set_buffer(&ctx->info, &ctx->info_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SALT)) != ((void*)0))
        if (!sskdf_set_buffer(&ctx->salt, &ctx->salt_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_MAC_SIZE))
        != ((void*)0)) {
        if (!OSSL_PARAM_get_size_t(p, &sz) || sz == 0)
            return 0;
        ctx->out_len = sz;
    }
    return 1;
}
