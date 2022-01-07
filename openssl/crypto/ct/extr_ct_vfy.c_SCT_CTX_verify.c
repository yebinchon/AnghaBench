
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ entry_type; scalar_t__ version; scalar_t__ log_id_len; scalar_t__ timestamp; int sig_len; int sig; int log_id; } ;
struct TYPE_8__ {scalar_t__ pkeyhashlen; scalar_t__ epoch_time_in_ms; int * pkey; int pkeyhash; int * ihash; } ;
typedef TYPE_1__ SCT_CTX ;
typedef TYPE_2__ SCT ;
typedef int EVP_MD_CTX ;


 int CT_F_SCT_CTX_VERIFY ;
 scalar_t__ CT_LOG_ENTRY_TYPE_NOT_SET ;
 scalar_t__ CT_LOG_ENTRY_TYPE_PRECERT ;
 int CT_R_SCT_FUTURE_TIMESTAMP ;
 int CT_R_SCT_INVALID_SIGNATURE ;
 int CT_R_SCT_LOG_ID_MISMATCH ;
 int CT_R_SCT_NOT_SET ;
 int CT_R_SCT_UNSUPPORTED_VERSION ;
 int CTerr (int ,int ) ;
 int EVP_DigestVerifyFinal (int *,int ,int ) ;
 int EVP_DigestVerifyInit (int *,int *,int ,int *,int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int EVP_sha256 () ;
 scalar_t__ SCT_VERSION_V1 ;
 int SCT_is_complete (TYPE_2__ const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int sct_ctx_update (int *,TYPE_1__ const*,TYPE_2__ const*) ;

int SCT_CTX_verify(const SCT_CTX *sctx, const SCT *sct)
{
    EVP_MD_CTX *ctx = ((void*)0);
    int ret = 0;

    if (!SCT_is_complete(sct) || sctx->pkey == ((void*)0) ||
        sct->entry_type == CT_LOG_ENTRY_TYPE_NOT_SET ||
        (sct->entry_type == CT_LOG_ENTRY_TYPE_PRECERT && sctx->ihash == ((void*)0))) {
        CTerr(CT_F_SCT_CTX_VERIFY, CT_R_SCT_NOT_SET);
        return 0;
    }
    if (sct->version != SCT_VERSION_V1) {
        CTerr(CT_F_SCT_CTX_VERIFY, CT_R_SCT_UNSUPPORTED_VERSION);
        return 0;
    }
    if (sct->log_id_len != sctx->pkeyhashlen ||
        memcmp(sct->log_id, sctx->pkeyhash, sctx->pkeyhashlen) != 0) {
        CTerr(CT_F_SCT_CTX_VERIFY, CT_R_SCT_LOG_ID_MISMATCH);
        return 0;
    }
    if (sct->timestamp > sctx->epoch_time_in_ms) {
        CTerr(CT_F_SCT_CTX_VERIFY, CT_R_SCT_FUTURE_TIMESTAMP);
        return 0;
    }

    ctx = EVP_MD_CTX_new();
    if (ctx == ((void*)0))
        goto end;

    if (!EVP_DigestVerifyInit(ctx, ((void*)0), EVP_sha256(), ((void*)0), sctx->pkey))
        goto end;

    if (!sct_ctx_update(ctx, sctx, sct))
        goto end;


    ret = EVP_DigestVerifyFinal(ctx, sct->sig, sct->sig_len);

    if (ret == 0)
        CTerr(CT_F_SCT_CTX_VERIFY, CT_R_SCT_INVALID_SIGNATURE);

end:
    EVP_MD_CTX_free(ctx);
    return ret;
}
