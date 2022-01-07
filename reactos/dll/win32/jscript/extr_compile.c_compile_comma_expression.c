
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int compiler_ctx_t ;
struct TYPE_3__ {int expression2; int expression1; } ;
typedef TYPE_1__ binary_expression_t ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int compile_expression (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_comma_expression(compiler_ctx_t *ctx, binary_expression_t *expr, BOOL emit_ret)
{
    HRESULT hres;

    hres = compile_expression(ctx, expr->expression1, FALSE);
    if(FAILED(hres))
        return hres;

    return compile_expression(ctx, expr->expression2, emit_ret);
}
