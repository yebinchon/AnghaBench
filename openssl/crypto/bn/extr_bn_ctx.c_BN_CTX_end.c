
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int used; scalar_t__ too_many; int pool; int stack; scalar_t__ err_stack; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_POOL_release (int *,unsigned int) ;
 unsigned int BN_STACK_pop (int *) ;
 int CTXDBG (char*,TYPE_1__*) ;

void BN_CTX_end(BN_CTX *ctx)
{
    if (ctx == ((void*)0))
        return;
    CTXDBG("ENTER BN_CTX_end()", ctx);
    if (ctx->err_stack)
        ctx->err_stack--;
    else {
        unsigned int fp = BN_STACK_pop(&ctx->stack);

        if (fp < ctx->used)
            BN_POOL_release(&ctx->pool, ctx->used - fp);
        ctx->used = fp;

        ctx->too_many = 0;
    }
    CTXDBG("LEAVE BN_CTX_end()", ctx);
}
