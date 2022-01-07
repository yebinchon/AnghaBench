
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack_top; } ;
typedef TYPE_1__ stringify_ctx_t ;



__attribute__((used)) static void stringify_pop_obj(stringify_ctx_t *ctx)
{
    ctx->stack_top--;
}
