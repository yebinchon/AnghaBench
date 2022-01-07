
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int with_statement_t ;
typedef int while_statement_t ;
typedef int var_statement_t ;
typedef int try_statement_t ;
typedef int switch_statement_t ;
struct TYPE_23__ {int type; } ;
typedef TYPE_1__ statement_t ;
struct TYPE_24__ {struct TYPE_24__* next; } ;
typedef TYPE_2__ statement_ctx_t ;
typedef int labelled_statement_t ;
typedef int if_statement_t ;
typedef int forin_statement_t ;
typedef int for_statement_t ;
typedef int expression_statement_t ;
struct TYPE_25__ {TYPE_2__* stat_ctx; } ;
typedef TYPE_3__ compiler_ctx_t ;
typedef int branch_statement_t ;
struct TYPE_26__ {int stat_list; } ;
typedef TYPE_4__ block_statement_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int S_OK ;
 int assert (int) ;
 int compile_block_statement (TYPE_3__*,int ) ;
 int compile_break_statement (TYPE_3__*,int *) ;
 int compile_continue_statement (TYPE_3__*,int *) ;
 int compile_expression_statement (TYPE_3__*,int *) ;
 int compile_for_statement (TYPE_3__*,int *) ;
 int compile_forin_statement (TYPE_3__*,int *) ;
 int compile_if_statement (TYPE_3__*,int *) ;
 int compile_labelled_statement (TYPE_3__*,int *) ;
 int compile_return_statement (TYPE_3__*,int *) ;
 int compile_switch_statement (TYPE_3__*,int *) ;
 int compile_throw_statement (TYPE_3__*,int *) ;
 int compile_try_statement (TYPE_3__*,int *) ;
 int compile_var_statement (TYPE_3__*,int *) ;
 int compile_while_statement (TYPE_3__*,int *) ;
 int compile_with_statement (TYPE_3__*,int *) ;

__attribute__((used)) static HRESULT compile_statement(compiler_ctx_t *ctx, statement_ctx_t *stat_ctx, statement_t *stat)
{
    HRESULT hres;

    if(stat_ctx) {
        stat_ctx->next = ctx->stat_ctx;
        ctx->stat_ctx = stat_ctx;
    }

    switch(stat->type) {
    case 143:
        hres = compile_block_statement(ctx, ((block_statement_t*)stat)->stat_list);
        break;
    case 142:
        hres = compile_break_statement(ctx, (branch_statement_t*)stat);
        break;
    case 141:
        hres = compile_continue_statement(ctx, (branch_statement_t*)stat);
        break;
    case 140:

        hres = S_OK;
        break;
    case 139:
        hres = compile_expression_statement(ctx, (expression_statement_t*)stat);
        break;
    case 138:
        hres = compile_for_statement(ctx, (for_statement_t*)stat);
        break;
    case 137:
        hres = compile_forin_statement(ctx, (forin_statement_t*)stat);
        break;
    case 136:
        hres = compile_if_statement(ctx, (if_statement_t*)stat);
        break;
    case 135:
        hres = compile_labelled_statement(ctx, (labelled_statement_t*)stat);
        break;
    case 134:
        hres = compile_return_statement(ctx, (expression_statement_t*)stat);
        break;
    case 133:
        hres = compile_switch_statement(ctx, (switch_statement_t*)stat);
        break;
    case 132:
        hres = compile_throw_statement(ctx, (expression_statement_t*)stat);
        break;
    case 131:
        hres = compile_try_statement(ctx, (try_statement_t*)stat);
        break;
    case 130:
        hres = compile_var_statement(ctx, (var_statement_t*)stat);
        break;
    case 129:
        hres = compile_while_statement(ctx, (while_statement_t*)stat);
        break;
    case 128:
        hres = compile_with_statement(ctx, (with_statement_t*)stat);
        break;
    DEFAULT_UNREACHABLE;
    }

    if(stat_ctx) {
        assert(ctx->stat_ctx == stat_ctx);
        ctx->stat_ctx = stat_ctx->next;
    }

    return hres;
}
