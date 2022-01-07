
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ break_label; struct TYPE_11__* next; TYPE_1__* labelled_stat; } ;
typedef TYPE_2__ statement_ctx_t ;
struct TYPE_12__ {TYPE_2__* stat_ctx; } ;
typedef TYPE_3__ compiler_ctx_t ;
struct TYPE_13__ {int identifier; } ;
typedef TYPE_4__ branch_statement_t ;
struct TYPE_10__ {int identifier; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_INVALID_BREAK ;
 int JS_E_LABEL_NOT_FOUND ;
 int OP_jmp ;
 int WARN (char*) ;
 int assert (scalar_t__) ;
 int pop_to_stat (TYPE_3__*,TYPE_2__*) ;
 int push_instr_uint (TYPE_3__*,int ,scalar_t__) ;
 int wcscmp (int ,int ) ;

__attribute__((used)) static HRESULT compile_break_statement(compiler_ctx_t *ctx, branch_statement_t *stat)
{
    statement_ctx_t *pop_ctx;
    HRESULT hres;

    if(stat->identifier) {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->labelled_stat && !wcscmp(pop_ctx->labelled_stat->identifier, stat->identifier)) {
                assert(pop_ctx->break_label);
                break;
            }
        }

        if(!pop_ctx) {
            WARN("Label not found\n");
            return JS_E_LABEL_NOT_FOUND;
        }
    }else {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->break_label && !pop_ctx->labelled_stat)
                break;
        }

        if(!pop_ctx) {
            WARN("Break outside loop\n");
            return JS_E_INVALID_BREAK;
        }
    }

    hres = pop_to_stat(ctx, pop_ctx->next);
    if(FAILED(hres))
        return hres;

    return push_instr_uint(ctx, OP_jmp, pop_ctx->break_label);
}
