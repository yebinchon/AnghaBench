
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ err_stack; int used; int stack; scalar_t__ too_many; } ;
typedef TYPE_1__ BN_CTX ;


 int BN_F_BN_CTX_START ;
 int BN_R_TOO_MANY_TEMPORARY_VARIABLES ;
 int BN_STACK_push (int *,int ) ;
 int BNerr (int ,int ) ;
 int CTXDBG (char*,TYPE_1__*) ;

void BN_CTX_start(BN_CTX *ctx)
{
    CTXDBG("ENTER BN_CTX_start()", ctx);

    if (ctx->err_stack || ctx->too_many)
        ctx->err_stack++;

    else if (!BN_STACK_push(&ctx->stack, ctx->used)) {
        BNerr(BN_F_BN_CTX_START, BN_R_TOO_MANY_TEMPORARY_VARIABLES);
        ctx->err_stack++;
    }
    CTXDBG("LEAVE BN_CTX_start()", ctx);
}
