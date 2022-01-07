
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* method; } ;
typedef TYPE_2__ X509_LOOKUP ;
struct TYPE_5__ {int (* shutdown ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

int X509_LOOKUP_shutdown(X509_LOOKUP *ctx)
{
    if (ctx->method == ((void*)0))
        return 0;
    if (ctx->method->shutdown != ((void*)0))
        return ctx->method->shutdown(ctx);
    else
        return 1;
}
