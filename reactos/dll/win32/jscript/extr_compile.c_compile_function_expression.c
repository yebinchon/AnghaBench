
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int func_id; } ;
typedef TYPE_1__ function_expression_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int OP_func ;
 int S_OK ;
 int push_instr_uint (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_function_expression(compiler_ctx_t *ctx, function_expression_t *expr, BOOL emit_ret)
{
    return emit_ret ? push_instr_uint(ctx, OP_func, expr->func_id) : S_OK;
}
