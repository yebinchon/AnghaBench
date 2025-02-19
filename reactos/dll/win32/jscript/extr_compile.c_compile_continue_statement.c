
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_2__ statement_t ;
struct TYPE_14__ {scalar_t__ continue_label; struct TYPE_14__* next; TYPE_1__* labelled_stat; } ;
typedef TYPE_3__ statement_ctx_t ;
struct TYPE_15__ {TYPE_2__* statement; } ;
typedef TYPE_4__ labelled_statement_t ;
struct TYPE_16__ {TYPE_3__* stat_ctx; } ;
typedef TYPE_5__ compiler_ctx_t ;
struct TYPE_17__ {scalar_t__ identifier; } ;
typedef TYPE_6__ branch_statement_t ;
struct TYPE_12__ {TYPE_2__* statement; int identifier; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_INVALID_CONTINUE ;
 int JS_E_LABEL_NOT_FOUND ;
 int OP_jmp ;
 scalar_t__ STAT_LABEL ;
 int WARN (char*) ;
 int assert (int ) ;
 int is_loop_statement (scalar_t__) ;
 int pop_to_stat (TYPE_5__*,TYPE_3__*) ;
 int push_instr_uint (TYPE_5__*,int ,scalar_t__) ;
 int wcscmp (int ,scalar_t__) ;

__attribute__((used)) static HRESULT compile_continue_statement(compiler_ctx_t *ctx, branch_statement_t *stat)
{
    statement_ctx_t *pop_ctx;
    HRESULT hres;

    if(stat->identifier) {
        statement_t *label_stat;
        statement_ctx_t *iter;

        pop_ctx = ((void*)0);

        for(iter = ctx->stat_ctx; iter; iter = iter->next) {
            if(iter->continue_label)
                pop_ctx = iter;
            if(iter->labelled_stat && !wcscmp(iter->labelled_stat->identifier, stat->identifier))
                break;
        }

        if(!iter) {
            WARN("Label not found\n");
            return JS_E_LABEL_NOT_FOUND;
        }


        for(label_stat = iter->labelled_stat->statement;
            label_stat->type == STAT_LABEL;
            label_stat = ((labelled_statement_t*)label_stat)->statement);
        if(!is_loop_statement(label_stat->type)) {
            WARN("Label is not a loop\n");
            return JS_E_INVALID_CONTINUE;
        }

        assert(pop_ctx != ((void*)0));
    }else {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->continue_label)
                break;
        }

        if(!pop_ctx) {
            WARN("continue outside loop\n");
            return JS_E_INVALID_CONTINUE;
        }
    }

    hres = pop_to_stat(ctx, pop_ctx);
    if(FAILED(hres))
        return hres;

    return push_instr_uint(ctx, OP_jmp, pop_ctx->continue_label);
}
