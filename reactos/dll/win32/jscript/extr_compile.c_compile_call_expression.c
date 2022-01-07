
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jsop_t ;
typedef int compiler_ctx_t ;
struct TYPE_11__ {TYPE_4__* argument_list; TYPE_6__* expression; } ;
typedef TYPE_3__ call_expression_t ;
struct TYPE_12__ {TYPE_6__* expr; struct TYPE_12__* next; } ;
typedef TYPE_4__ argument_t ;
struct TYPE_14__ {int type; } ;
struct TYPE_10__ {TYPE_1__* arg; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_9__ {unsigned int uint; int lng; } ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_call ;
 int OP_call_member ;
 int OP_pop ;
 int OP_push_acc ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,TYPE_6__*,int ) ;
 int compile_memberid_expression (int *,TYPE_6__*,int ) ;
 TYPE_5__* instr_ptr (int *,unsigned int) ;
 scalar_t__ is_memberid_expr (int ) ;
 unsigned int push_instr (int *,int ) ;
 int push_instr_uint (int *,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_call_expression(compiler_ctx_t *ctx, call_expression_t *expr, BOOL emit_ret)
{
    unsigned arg_cnt = 0, extra_args;
    argument_t *arg;
    unsigned instr;
    jsop_t op;
    HRESULT hres;

    if(is_memberid_expr(expr->expression->type)) {
        op = OP_call_member;
        extra_args = 2;
        hres = compile_memberid_expression(ctx, expr->expression, 0);
    }else {
        op = OP_call;
        extra_args = 1;
        hres = compile_expression(ctx, expr->expression, TRUE);
    }

    if(FAILED(hres))
        return hres;

    for(arg = expr->argument_list; arg; arg = arg->next) {
        hres = compile_expression(ctx, arg->expr, TRUE);
        if(FAILED(hres))
            return hres;
        arg_cnt++;
    }

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    instr_ptr(ctx, instr)->u.arg[0].uint = arg_cnt;
    instr_ptr(ctx, instr)->u.arg[1].lng = emit_ret;

    hres = push_instr_uint(ctx, OP_pop, arg_cnt + extra_args);
    if(FAILED(hres))
        return hres;

    return !emit_ret || push_instr(ctx, OP_push_acc) ? S_OK : E_OUTOFMEMORY;
}
