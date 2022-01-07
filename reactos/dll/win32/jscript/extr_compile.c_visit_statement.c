
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_22__ {TYPE_7__* statement; int expr; } ;
typedef TYPE_2__ with_statement_t ;
struct TYPE_23__ {TYPE_7__* statement; int expr; } ;
typedef TYPE_3__ while_statement_t ;
struct TYPE_24__ {int variable_list; } ;
typedef TYPE_4__ var_statement_t ;
struct TYPE_25__ {TYPE_7__* finally_statement; TYPE_1__* catch_block; TYPE_7__* try_statement; } ;
typedef TYPE_5__ try_statement_t ;
struct TYPE_26__ {TYPE_13__* case_list; int expr; } ;
typedef TYPE_6__ switch_statement_t ;
struct TYPE_27__ {int type; struct TYPE_27__* next; } ;
typedef TYPE_7__ statement_t ;
struct TYPE_28__ {TYPE_7__* statement; } ;
typedef TYPE_8__ labelled_statement_t ;
struct TYPE_29__ {TYPE_7__* else_stat; TYPE_7__* if_stat; int expr; } ;
typedef TYPE_9__ if_statement_t ;
struct TYPE_16__ {TYPE_7__* statement; int expr; int in_expr; int variable; } ;
typedef TYPE_10__ forin_statement_t ;
struct TYPE_17__ {int end_expr; TYPE_7__* statement; int expr; int begin_expr; int variable_list; } ;
typedef TYPE_11__ for_statement_t ;
struct TYPE_18__ {int expr; } ;
typedef TYPE_12__ expression_statement_t ;
typedef int compiler_ctx_t ;
struct TYPE_19__ {TYPE_7__* stat; struct TYPE_19__* next; int expr; } ;
typedef TYPE_13__ case_clausule_t ;
struct TYPE_20__ {int stat_list; } ;
typedef TYPE_14__ block_statement_t ;
struct TYPE_21__ {TYPE_7__* statement; } ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;
 int FAILED (int ) ;
 int S_OK ;
 int visit_block_statement (int *,int ) ;
 int visit_expression (int *,int ) ;
 int visit_variable_list (int *,int ) ;

__attribute__((used)) static HRESULT visit_statement(compiler_ctx_t *ctx, statement_t *stat)
{
    HRESULT hres = S_OK;

    switch(stat->type) {
    case 143:
        hres = visit_block_statement(ctx, ((block_statement_t*)stat)->stat_list);
        break;
    case 142:
    case 141:
    case 140:
        break;
    case 139:
    case 134:
    case 132: {
        expression_statement_t *expr_stat = (expression_statement_t*)stat;
        if(expr_stat->expr)
            hres = visit_expression(ctx, expr_stat->expr);
        break;
    }
    case 138: {
        for_statement_t *for_stat = (for_statement_t*)stat;

        if(for_stat->variable_list)
            hres = visit_variable_list(ctx, for_stat->variable_list);
        else if(for_stat->begin_expr)
            hres = visit_expression(ctx, for_stat->begin_expr);
        if(FAILED(hres))
            break;

        if(for_stat->expr) {
            hres = visit_expression(ctx, for_stat->expr);
            if(FAILED(hres))
                break;
        }

        hres = visit_statement(ctx, for_stat->statement);
        if(FAILED(hres))
            break;

        if(for_stat->end_expr)
            hres = visit_expression(ctx, for_stat->end_expr);
        break;
    }
    case 137: {
        forin_statement_t *forin_stat = (forin_statement_t*)stat;

        if(forin_stat->variable) {
            hres = visit_variable_list(ctx, forin_stat->variable);
            if(FAILED(hres))
                break;
        }

        hres = visit_expression(ctx, forin_stat->in_expr);
        if(FAILED(hres))
            return hres;

        if(forin_stat->expr) {
            hres = visit_expression(ctx, forin_stat->expr);
            if(FAILED(hres))
                return hres;
        }

        hres = visit_statement(ctx, forin_stat->statement);
        break;
    }
    case 136: {
        if_statement_t *if_stat = (if_statement_t*)stat;

        hres = visit_expression(ctx, if_stat->expr);
        if(FAILED(hres))
            return hres;

        hres = visit_statement(ctx, if_stat->if_stat);
        if(FAILED(hres))
            return hres;

        if(if_stat->else_stat)
            hres = visit_statement(ctx, if_stat->else_stat);
        break;
    }
    case 135:
        hres = visit_statement(ctx, ((labelled_statement_t*)stat)->statement);
        break;
    case 133: {
        switch_statement_t *switch_stat = (switch_statement_t*)stat;
        statement_t *stat_iter;
        case_clausule_t *iter;

        hres = visit_expression(ctx, switch_stat->expr);
        if(FAILED(hres))
            return hres;

        for(iter = switch_stat->case_list; iter; iter = iter->next) {
            if(!iter->expr)
                continue;
            hres = visit_expression(ctx, iter->expr);
            if(FAILED(hres))
                return hres;
        }

        for(iter = switch_stat->case_list; iter; iter = iter->next) {
            while(iter->next && iter->next->stat == iter->stat)
                iter = iter->next;
            for(stat_iter = iter->stat; stat_iter && (!iter->next || iter->next->stat != stat_iter);
                stat_iter = stat_iter->next) {
                hres = visit_statement(ctx, stat_iter);
                if(FAILED(hres))
                    return hres;
            }
        }
        break;
    }
    case 131: {
        try_statement_t *try_stat = (try_statement_t*)stat;

        hres = visit_statement(ctx, try_stat->try_statement);
        if(FAILED(hres))
            return hres;

        if(try_stat->catch_block) {
            hres = visit_statement(ctx, try_stat->catch_block->statement);
            if(FAILED(hres))
                return hres;
        }

        if(try_stat->finally_statement)
            hres = visit_statement(ctx, try_stat->finally_statement);
        break;
    }
    case 130:
        hres = visit_variable_list(ctx, ((var_statement_t*)stat)->variable_list);
        break;
    case 129: {
        while_statement_t *while_stat = (while_statement_t*)stat;

        hres = visit_expression(ctx, while_stat->expr);
        if(FAILED(hres))
            return hres;

        hres = visit_statement(ctx, while_stat->statement);
        break;
    }
    case 128: {
        with_statement_t *with_stat = (with_statement_t*)stat;

        hres = visit_expression(ctx, with_stat->expr);
        if(FAILED(hres))
            return hres;

        hres = visit_statement(ctx, with_stat->statement);
        break;
    }
    DEFAULT_UNREACHABLE;
    }

    return hres;
}
