
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* freectx ) (int *) ;} ;
struct TYPE_5__ {TYPE_3__* meth; int * data; } ;
typedef TYPE_1__ EVP_MAC_CTX ;


 int EVP_MAC_free (TYPE_3__*) ;
 int OPENSSL_free (TYPE_1__*) ;
 int stub1 (int *) ;

void EVP_MAC_CTX_free(EVP_MAC_CTX *ctx)
{
    if (ctx != ((void*)0)) {
        ctx->meth->freectx(ctx->data);
        ctx->data = ((void*)0);

        EVP_MAC_free(ctx->meth);
    }
    OPENSSL_free(ctx);
}
