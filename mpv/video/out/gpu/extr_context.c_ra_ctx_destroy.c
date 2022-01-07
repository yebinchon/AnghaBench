
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_ctx {TYPE_3__* fns; TYPE_2__* spirv; } ;
struct TYPE_6__ {int (* uninit ) (struct ra_ctx*) ;} ;
struct TYPE_5__ {TYPE_1__* fns; } ;
struct TYPE_4__ {int (* uninit ) (struct ra_ctx*) ;} ;


 int stub1 (struct ra_ctx*) ;
 int stub2 (struct ra_ctx*) ;
 int talloc_free (struct ra_ctx*) ;

void ra_ctx_destroy(struct ra_ctx **ctx_ptr)
{
    struct ra_ctx *ctx = *ctx_ptr;
    if (!ctx)
        return;

    if (ctx->spirv && ctx->spirv->fns->uninit)
        ctx->spirv->fns->uninit(ctx);

    ctx->fns->uninit(ctx);
    talloc_free(ctx);

    *ctx_ptr = ((void*)0);
}
