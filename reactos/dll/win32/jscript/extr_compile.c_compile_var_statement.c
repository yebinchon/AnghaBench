
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int variable_list; } ;
typedef TYPE_1__ var_statement_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int compile_variable_list (int *,int ) ;

__attribute__((used)) static HRESULT compile_var_statement(compiler_ctx_t *ctx, var_statement_t *stat)
{
    return compile_variable_list(ctx, stat->variable_list);
}
