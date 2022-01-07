
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ data_size; int * data; } ;
struct TYPE_8__ {size_t seclen; void* seed; int seedlen; int * sec; int P_hash; int P_sha1; int provctx; } ;
typedef TYPE_1__ TLS1_PRF ;
typedef TYPE_2__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;


 int EVP_MAC_CTX_free (int ) ;
 int OPENSSL_cleanse (void*,int) ;
 int OPENSSL_clear_free (int *,size_t) ;
 int OSSL_KDF_PARAM_DIGEST ;
 int OSSL_KDF_PARAM_SECRET ;
 int OSSL_KDF_PARAM_SEED ;
 int OSSL_MAC_NAME_HMAC ;
 int OSSL_PARAM_get_octet_string (TYPE_2__ const*,void**,int,size_t*) ;
 TYPE_2__* OSSL_PARAM_locate_const (TYPE_2__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int * SN_md5 ;
 int SN_md5_sha1 ;
 int * SN_sha1 ;
 int TLS1_PRF_MAXBUF ;
 int ossl_prov_macctx_load_from_params (int *,TYPE_2__ const*,int ,int *,int *,int *) ;
 scalar_t__ strcasecmp (int *,int ) ;

__attribute__((used)) static int kdf_tls1_prf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    TLS1_PRF *ctx = vctx;
    OPENSSL_CTX *libctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_DIGEST)) != ((void*)0)) {
        if (strcasecmp(p->data, SN_md5_sha1) == 0) {
            if (!ossl_prov_macctx_load_from_params(&ctx->P_hash, params,
                                                   OSSL_MAC_NAME_HMAC,
                                                   ((void*)0), SN_md5, libctx)
                || !ossl_prov_macctx_load_from_params(&ctx->P_sha1, params,
                                                      OSSL_MAC_NAME_HMAC,
                                                      ((void*)0), SN_sha1, libctx))
                return 0;
        } else {
            EVP_MAC_CTX_free(ctx->P_sha1);
            if (!ossl_prov_macctx_load_from_params(&ctx->P_hash, params,
                                                   OSSL_MAC_NAME_HMAC,
                                                   ((void*)0), ((void*)0), libctx))
                return 0;
        }
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SECRET)) != ((void*)0)) {
        OPENSSL_clear_free(ctx->sec, ctx->seclen);
        ctx->sec = ((void*)0);
        if (!OSSL_PARAM_get_octet_string(p, (void **)&ctx->sec, 0, &ctx->seclen))
            return 0;
    }

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SEED)) != ((void*)0)) {
        OPENSSL_cleanse(ctx->seed, ctx->seedlen);
        ctx->seedlen = 0;

        for (; p != ((void*)0); p = OSSL_PARAM_locate_const(p + 1,
                                                      OSSL_KDF_PARAM_SEED)) {
            const void *q = ctx->seed + ctx->seedlen;
            size_t sz = 0;

            if (p->data_size != 0
                && p->data != ((void*)0)
                && !OSSL_PARAM_get_octet_string(p, (void **)&q,
                                                TLS1_PRF_MAXBUF - ctx->seedlen,
                                                &sz))
                return 0;
            ctx->seedlen += sz;
        }
    }
    return 1;
}
