
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* meth; } ;
struct TYPE_6__ {int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_2__ COMP_CTX ;


 int OPENSSL_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void COMP_CTX_free(COMP_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;
    if (ctx->meth->finish != ((void*)0))
        ctx->meth->finish(ctx);

    OPENSSL_free(ctx);
}
