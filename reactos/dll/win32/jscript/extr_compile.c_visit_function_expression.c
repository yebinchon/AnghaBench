
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int identifier; scalar_t__ event_target; struct TYPE_8__* next; scalar_t__ func_id; } ;
typedef TYPE_2__ function_expression_t ;
struct TYPE_9__ {TYPE_2__* func_head; TYPE_2__* func_tail; TYPE_1__* func; } ;
typedef TYPE_3__ compiler_ctx_t ;
struct TYPE_7__ {int func_cnt; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 scalar_t__ alloc_variable (TYPE_3__*,int ) ;

__attribute__((used)) static HRESULT visit_function_expression(compiler_ctx_t *ctx, function_expression_t *expr)
{
    expr->func_id = ctx->func->func_cnt++;
    ctx->func_tail = ctx->func_tail ? (ctx->func_tail->next = expr) : (ctx->func_head = expr);

    return !expr->identifier || expr->event_target || alloc_variable(ctx, expr->identifier)
        ? S_OK : E_OUTOFMEMORY;
}
