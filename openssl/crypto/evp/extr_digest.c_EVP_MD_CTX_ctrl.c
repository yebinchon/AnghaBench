
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* digest; TYPE_1__* pctx; } ;
struct TYPE_9__ {int (* md_ctrl ) (TYPE_3__*,int,int,void*) ;int * prov; } ;
struct TYPE_8__ {scalar_t__ operation; } ;
typedef int OSSL_PARAM ;
typedef TYPE_3__ EVP_MD_CTX ;


 int ERR_LIB_EVP ;
 int ERR_raise (int ,int ) ;
 int EVP_CTRL_RET_UNSUPPORTED ;



 int EVP_MD_CTX_get_params (TYPE_3__*,int *) ;
 int EVP_MD_CTX_set_params (TYPE_3__*,int *) ;
 scalar_t__ EVP_PKEY_OP_SIGNCTX ;
 scalar_t__ EVP_PKEY_OP_VERIFYCTX ;
 int EVP_R_CTRL_NOT_IMPLEMENTED ;
 int EVP_R_MESSAGE_DIGEST_IS_NULL ;
 int OSSL_DIGEST_PARAM_MICALG ;
 int OSSL_DIGEST_PARAM_SSL3_MS ;
 int OSSL_DIGEST_PARAM_XOFLEN ;
 int OSSL_PARAM_END ;
 int OSSL_PARAM_construct_octet_string (int ,void*,int) ;
 int OSSL_PARAM_construct_size_t (int ,size_t*) ;
 int OSSL_PARAM_construct_utf8_string (int ,void*,int) ;
 int stub1 (TYPE_3__*,int,int,void*) ;

int EVP_MD_CTX_ctrl(EVP_MD_CTX *ctx, int cmd, int p1, void *p2)
{
    int ret = EVP_CTRL_RET_UNSUPPORTED;
    int set_params = 1;
    size_t sz;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    if (ctx == ((void*)0) || ctx->digest == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, EVP_R_MESSAGE_DIGEST_IS_NULL);
        return 0;
    }

    if (ctx->digest->prov == ((void*)0)
        && (ctx->pctx == ((void*)0)
            || (ctx->pctx->operation != EVP_PKEY_OP_VERIFYCTX
                && ctx->pctx->operation != EVP_PKEY_OP_SIGNCTX)))
        goto legacy;

    switch (cmd) {
    case 128:
        sz = (size_t)p1;
        params[0] = OSSL_PARAM_construct_size_t(OSSL_DIGEST_PARAM_XOFLEN, &sz);
        break;
    case 129:
        set_params = 0;
        params[0] = OSSL_PARAM_construct_utf8_string(OSSL_DIGEST_PARAM_MICALG,
                                                     p2, p1 ? p1 : 9999);
        break;
    case 130:
        params[0] = OSSL_PARAM_construct_octet_string(OSSL_DIGEST_PARAM_SSL3_MS,
                                                      p2, p1);
        break;
    default:
        goto conclude;
    }

    if (set_params)
        ret = EVP_MD_CTX_set_params(ctx, params);
    else
        ret = EVP_MD_CTX_get_params(ctx, params);
    goto conclude;



 legacy:
    if (ctx->digest->md_ctrl == ((void*)0)) {
        ERR_raise(ERR_LIB_EVP, EVP_R_CTRL_NOT_IMPLEMENTED);
        return 0;
    }

    ret = ctx->digest->md_ctrl(ctx, cmd, p1, p2);
 conclude:
    if (ret <= 0)
        return 0;
    return ret;
}
