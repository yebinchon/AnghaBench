
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* jscaller; struct TYPE_7__* stack; int stack_top; scalar_t__ last_match; int tmp_heap; scalar_t__ cc; int acc; scalar_t__ ref; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_6__ {int IServiceProvider_iface; int * ctx; } ;


 int IServiceProvider_Release (int *) ;
 int assert (int) ;
 int clear_ei (TYPE_2__*) ;
 int heap_free (TYPE_2__*) ;
 int heap_pool_free (int *) ;
 int jsstr_release (scalar_t__) ;
 int jsval_release (int ) ;
 int release_cc (scalar_t__) ;

void script_release(script_ctx_t *ctx)
{
    if(--ctx->ref)
        return;

    jsval_release(ctx->acc);
    clear_ei(ctx);
    if(ctx->cc)
        release_cc(ctx->cc);
    heap_pool_free(&ctx->tmp_heap);
    if(ctx->last_match)
        jsstr_release(ctx->last_match);
    assert(!ctx->stack_top);
    heap_free(ctx->stack);

    ctx->jscaller->ctx = ((void*)0);
    IServiceProvider_Release(&ctx->jscaller->IServiceProvider_iface);

    heap_free(ctx);
}
