
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stack_top; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int exprval_t ;
typedef int BOOL ;


 int stack_topn_exprval (TYPE_1__*,int ,int *) ;

__attribute__((used)) static inline BOOL stack_pop_exprval(script_ctx_t *ctx, exprval_t *r)
{
    BOOL ret = stack_topn_exprval(ctx, 0, r);
    ctx->stack_top -= 2;
    return ret;
}
