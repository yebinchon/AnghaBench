
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * pctx; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_1__ EVP_MD_CTX ;


 int EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ;
 int EVP_MD_CTX_clear_flags (TYPE_1__*,int ) ;
 int EVP_MD_CTX_set_flags (TYPE_1__*,int ) ;
 int EVP_MD_CTX_test_flags (TYPE_1__*,int ) ;
 int EVP_PKEY_CTX_free (int *) ;

void EVP_MD_CTX_set_pkey_ctx(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pctx)
{




    if (!EVP_MD_CTX_test_flags(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        EVP_PKEY_CTX_free(ctx->pctx);

    ctx->pctx = pctx;

    if (pctx != ((void*)0)) {

        EVP_MD_CTX_set_flags(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX);
    } else {
        EVP_MD_CTX_clear_flags(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX);
    }
}
