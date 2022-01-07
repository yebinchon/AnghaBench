
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int expr; scalar_t__ do_while; int statement; } ;
typedef TYPE_1__ while_statement_t ;
struct TYPE_13__ {unsigned int break_label; unsigned int continue_label; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ statement_ctx_t ;
struct TYPE_14__ {unsigned int code_off; } ;
typedef TYPE_3__ compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int OP_jmp ;
 int OP_jmp_z ;
 int S_OK ;
 int TRUE ;
 void* alloc_label (TYPE_3__*) ;
 int compile_expression (TYPE_3__*,int ,int ) ;
 int compile_statement (TYPE_3__*,TYPE_2__*,int ) ;
 int label_set_addr (TYPE_3__*,unsigned int) ;
 int push_instr_uint (TYPE_3__*,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_while_statement(compiler_ctx_t *ctx, while_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0, FALSE, FALSE};
    unsigned jmp_off;
    HRESULT hres;

    stat_ctx.break_label = alloc_label(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    stat_ctx.continue_label = alloc_label(ctx);
    if(!stat_ctx.continue_label)
        return E_OUTOFMEMORY;

    jmp_off = ctx->code_off;

    if(!stat->do_while) {
        label_set_addr(ctx, stat_ctx.continue_label);
        hres = compile_expression(ctx, stat->expr, TRUE);
        if(FAILED(hres))
            return hres;

        hres = push_instr_uint(ctx, OP_jmp_z, stat_ctx.break_label);
        if(FAILED(hres))
            return hres;
    }

    hres = compile_statement(ctx, &stat_ctx, stat->statement);
    if(FAILED(hres))
        return hres;

    if(stat->do_while) {
        label_set_addr(ctx, stat_ctx.continue_label);
        hres = compile_expression(ctx, stat->expr, TRUE);
        if(FAILED(hres))
            return hres;

        hres = push_instr_uint(ctx, OP_jmp_z, stat_ctx.break_label);
        if(FAILED(hres))
            return hres;
    }

    hres = push_instr_uint(ctx, OP_jmp, jmp_off);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, stat_ctx.break_label);
    return S_OK;
}
