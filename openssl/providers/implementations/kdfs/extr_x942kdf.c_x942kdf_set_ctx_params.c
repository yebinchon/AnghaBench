
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ nid; int keklen; } ;
struct TYPE_11__ {scalar_t__ cek_nid; int dkm_len; int ukm_len; int ukm; int secret_len; int secret; int digest; int provctx; } ;
struct TYPE_10__ {scalar_t__ data_type; int data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int OPENSSL_CTX ;
typedef TYPE_2__ KDF_X942 ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 scalar_t__ OBJ_sn2nid (int ) ;
 int OSSL_KDF_PARAM_CEK_ALG ;
 int OSSL_KDF_PARAM_KEY ;
 int OSSL_KDF_PARAM_SECRET ;
 int OSSL_KDF_PARAM_UKM ;
 size_t OSSL_NELEM (TYPE_6__*) ;
 scalar_t__ OSSL_PARAM_UTF8_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,int ) ;
 int * PROV_LIBRARY_CONTEXT_OF (int ) ;
 int PROV_R_UNSUPPORTED_CEK_ALG ;
 TYPE_6__* kek_algs ;
 int ossl_prov_digest_load_from_params (int *,TYPE_1__ const*,int *) ;
 int x942kdf_set_buffer (int *,int *,TYPE_1__ const*) ;

__attribute__((used)) static int x942kdf_set_ctx_params(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_X942 *ctx = vctx;
    OPENSSL_CTX *provctx = PROV_LIBRARY_CONTEXT_OF(ctx->provctx);
    size_t i;

    if (!ossl_prov_digest_load_from_params(&ctx->digest, params, provctx))
        return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_SECRET)) != ((void*)0)
        || (p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_KEY)) != ((void*)0))
        if (!x942kdf_set_buffer(&ctx->secret, &ctx->secret_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_UKM)) != ((void*)0))
        if (!x942kdf_set_buffer(&ctx->ukm, &ctx->ukm_len, p))
            return 0;

    if ((p = OSSL_PARAM_locate_const(params, OSSL_KDF_PARAM_CEK_ALG)) != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_UTF8_STRING)
            return 0;
        ctx->cek_nid = OBJ_sn2nid(p->data);
        for (i = 0; i < OSSL_NELEM(kek_algs); i++)
            if (kek_algs[i].nid == ctx->cek_nid)
                goto cek_found;
        ERR_raise(ERR_LIB_PROV, PROV_R_UNSUPPORTED_CEK_ALG);
        return 0;
cek_found:
        ctx->dkm_len = kek_algs[i].keklen;
    }
    return 1;
}
