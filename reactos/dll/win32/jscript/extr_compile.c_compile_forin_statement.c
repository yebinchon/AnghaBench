
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int member_0; void* break_label; void* continue_label; int member_2; int member_1; } ;
typedef TYPE_1__ statement_ctx_t ;
struct TYPE_8__ {int statement; TYPE_5__* expr; TYPE_3__* variable; int in_expr; } ;
typedef TYPE_2__ forin_statement_t ;
typedef int compiler_ctx_t ;
struct TYPE_10__ {int type; } ;
struct TYPE_9__ {int identifier; } ;
typedef int HRESULT ;


 int DISPID_STARTENUM ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 void* JS_E_ILLEGAL_ASSIGN ;
 int OP_forin ;
 int OP_int ;
 int OP_jmp ;
 int OP_throw_ref ;
 int S_OK ;
 int TRUE ;
 void* alloc_label (int *) ;
 int compile_expression (int *,int ,int ) ;
 int compile_memberid_expression (int *,TYPE_5__*,int ) ;
 int compile_statement (int *,TYPE_1__*,int ) ;
 int compile_variable_list (int *,TYPE_3__*) ;
 int emit_identifier_ref (int *,int ,int ) ;
 int fdexNameEnsure ;
 scalar_t__ is_memberid_expr (int ) ;
 int label_set_addr (int *,void*) ;
 int push_instr_int (int *,int ,int ) ;
 int push_instr_uint (int *,int ,void*) ;

__attribute__((used)) static HRESULT compile_forin_statement(compiler_ctx_t *ctx, forin_statement_t *stat)
{
    statement_ctx_t stat_ctx = {4, FALSE, FALSE};
    HRESULT hres;

    if(stat->variable) {
        hres = compile_variable_list(ctx, stat->variable);
        if(FAILED(hres))
            return hres;
    }

    stat_ctx.break_label = alloc_label(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    stat_ctx.continue_label = alloc_label(ctx);
    if(!stat_ctx.continue_label)
        return E_OUTOFMEMORY;

    hres = compile_expression(ctx, stat->in_expr, TRUE);
    if(FAILED(hres))
        return hres;

    if(stat->variable) {
        hres = emit_identifier_ref(ctx, stat->variable->identifier, fdexNameEnsure);
        if(FAILED(hres))
            return hres;
    }else if(is_memberid_expr(stat->expr->type)) {
        hres = compile_memberid_expression(ctx, stat->expr, fdexNameEnsure);
        if(FAILED(hres))
            return hres;
    }else {
        hres = push_instr_uint(ctx, OP_throw_ref, JS_E_ILLEGAL_ASSIGN);
        if(FAILED(hres))
            return hres;


        return S_OK;
    }

    hres = push_instr_int(ctx, OP_int, DISPID_STARTENUM);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, stat_ctx.continue_label);
    hres = push_instr_uint(ctx, OP_forin, stat_ctx.break_label);
    if(FAILED(hres))
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, &stat_ctx, stat->statement);
    if(FAILED(hres))
        return hres;

    hres = push_instr_uint(ctx, OP_jmp, stat_ctx.continue_label);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, stat_ctx.break_label);
    return S_OK;
}
