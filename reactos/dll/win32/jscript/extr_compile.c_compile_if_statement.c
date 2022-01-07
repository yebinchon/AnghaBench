
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ else_stat; scalar_t__ if_stat; int expr; } ;
typedef TYPE_1__ if_statement_t ;
struct TYPE_10__ {int code_off; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_jmp ;
 int OP_jmp_z ;
 int S_OK ;
 int TRUE ;
 int compile_expression (TYPE_2__*,int ,int ) ;
 int compile_statement (TYPE_2__*,int *,scalar_t__) ;
 unsigned int push_instr (TYPE_2__*,int ) ;
 int set_arg_uint (TYPE_2__*,unsigned int,int ) ;

__attribute__((used)) static HRESULT compile_if_statement(compiler_ctx_t *ctx, if_statement_t *stat)
{
    unsigned jmp_else;
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr, TRUE);
    if(FAILED(hres))
        return hres;

    jmp_else = push_instr(ctx, OP_jmp_z);
    if(!jmp_else)
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, ((void*)0), stat->if_stat);
    if(FAILED(hres))
        return hres;

    if(stat->else_stat) {
        unsigned jmp_end;

        jmp_end = push_instr(ctx, OP_jmp);
        if(!jmp_end)
            return E_OUTOFMEMORY;

        set_arg_uint(ctx, jmp_else, ctx->code_off);

        hres = compile_statement(ctx, ((void*)0), stat->else_stat);
        if(FAILED(hres))
            return hres;

        set_arg_uint(ctx, jmp_end, ctx->code_off);
    }else {
        set_arg_uint(ctx, jmp_else, ctx->code_off);
    }

    return S_OK;
}
