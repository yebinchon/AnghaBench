
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t stack_top; int * stack; TYPE_1__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_4__ {size_t stack_base; } ;


 int assert (int) ;

__attribute__((used)) static inline jsval_t stack_pop(script_ctx_t *ctx)
{
    assert(ctx->stack_top > ctx->call_ctx->stack_base);
    return ctx->stack[--ctx->stack_top];
}
