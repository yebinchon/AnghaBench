
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nbits; int qbits; int gentmp; int * md; int * pmd; } ;
struct TYPE_5__ {int keygen_info_count; int keygen_info; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;
typedef TYPE_2__ DSA_PKEY_CTX ;


 TYPE_2__* OPENSSL_malloc (int) ;

__attribute__((used)) static int pkey_dsa_init(EVP_PKEY_CTX *ctx)
{
    DSA_PKEY_CTX *dctx = OPENSSL_malloc(sizeof(*dctx));

    if (dctx == ((void*)0))
        return 0;
    dctx->nbits = 2048;
    dctx->qbits = 224;
    dctx->pmd = ((void*)0);
    dctx->md = ((void*)0);

    ctx->data = dctx;
    ctx->keygen_info = dctx->gentmp;
    ctx->keygen_info_count = 2;

    return 1;
}
