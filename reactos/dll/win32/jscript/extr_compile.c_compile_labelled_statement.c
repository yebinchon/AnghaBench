
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int break_label; TYPE_1__* labelled_stat; struct TYPE_12__* next; TYPE_3__* member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ statement_ctx_t ;
struct TYPE_13__ {int statement; int identifier; } ;
typedef TYPE_3__ labelled_statement_t ;
struct TYPE_14__ {TYPE_2__* stat_ctx; } ;
typedef TYPE_4__ compiler_ctx_t ;
struct TYPE_11__ {int identifier; } ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int JS_E_LABEL_REDEFINED ;
 int S_OK ;
 int WARN (char*,int ) ;
 int alloc_label (TYPE_4__*) ;
 int compile_statement (TYPE_4__*,TYPE_2__*,int ) ;
 int debugstr_w (int ) ;
 int label_set_addr (TYPE_4__*,int ) ;
 int wcscmp (int ,int ) ;

__attribute__((used)) static HRESULT compile_labelled_statement(compiler_ctx_t *ctx, labelled_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0, FALSE, FALSE, 0, 0, stat}, *iter;
    HRESULT hres;

    for(iter = ctx->stat_ctx; iter; iter = iter->next) {
        if(iter->labelled_stat && !wcscmp(iter->labelled_stat->identifier, stat->identifier)) {
            WARN("Label %s redefined\n", debugstr_w(stat->identifier));
            return JS_E_LABEL_REDEFINED;
        }
    }


    stat_ctx.break_label = alloc_label(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, &stat_ctx, stat->statement);
    if(FAILED(hres))
        return hres;

    label_set_addr(ctx, stat_ctx.break_label);
    return S_OK;
}
