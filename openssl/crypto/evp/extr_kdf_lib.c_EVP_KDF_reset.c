
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int data; TYPE_1__* meth; } ;
struct TYPE_4__ {int (* reset ) (int ) ;} ;
typedef TYPE_2__ EVP_KDF_CTX ;


 int stub1 (int ) ;

void EVP_KDF_reset(EVP_KDF_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;

    if (ctx->meth->reset != ((void*)0))
        ctx->meth->reset(ctx->data);
}
