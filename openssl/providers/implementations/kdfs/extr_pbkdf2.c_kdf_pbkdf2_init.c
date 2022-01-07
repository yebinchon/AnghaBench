
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lower_bound_checks; int iter; int digest; int provctx; } ;
typedef int OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_1__ KDF_PBKDF2 ;


 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_utf8_string (int ,int ,int ) ;
 int PKCS5_DEFAULT_ITER ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int SN_sha1 ;
 int kdf_pbkdf2_default_checks ;
 int ossl_prov_digest_load_from_params (int *,int *,int *) ;
 int ossl_prov_digest_reset (int *) ;

__attribute__((used)) static void kdf_pbkdf2_init(KDF_PBKDF2 *ctx)
{
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };
    OPENSSL_CTX *provctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);

    params[0] = OSSL_PARAM_construct_utf8_string(OSSL_KDF_PARAM_DIGEST,
                                                 SN_sha1, 0);
    if (!ossl_prov_digest_load_from_params(&ctx->digest, params, provctx))

        ossl_prov_digest_reset(&ctx->digest);
    ctx->iter = PKCS5_DEFAULT_ITER;
    ctx->lower_bound_checks = kdf_pbkdf2_default_checks;
}
