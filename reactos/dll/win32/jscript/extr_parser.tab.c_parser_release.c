
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int heap; int script; } ;
typedef TYPE_1__ parser_ctx_t ;


 int heap_free (TYPE_1__*) ;
 int heap_pool_free (int *) ;
 int script_release (int ) ;

void parser_release(parser_ctx_t *ctx)
{
    script_release(ctx->script);
    heap_pool_free(&ctx->heap);
    heap_free(ctx);
}
