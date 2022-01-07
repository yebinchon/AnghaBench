
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* preder; struct TYPE_4__* certder; struct TYPE_4__* ihash; struct TYPE_4__* pkeyhash; int pkey; } ;
typedef TYPE_1__ SCT_CTX ;


 int EVP_PKEY_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void SCT_CTX_free(SCT_CTX *sctx)
{
    if (sctx == ((void*)0))
        return;
    EVP_PKEY_free(sctx->pkey);
    OPENSSL_free(sctx->pkeyhash);
    OPENSSL_free(sctx->ihash);
    OPENSSL_free(sctx->certder);
    OPENSSL_free(sctx->preder);
    OPENSSL_free(sctx);
}
