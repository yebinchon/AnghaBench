#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ type; } ;
typedef  TYPE_2__ statement_t ;
struct TYPE_14__ {scalar_t__ continue_label; struct TYPE_14__* next; TYPE_1__* labelled_stat; } ;
typedef  TYPE_3__ statement_ctx_t ;
struct TYPE_15__ {TYPE_2__* statement; } ;
typedef  TYPE_4__ labelled_statement_t ;
struct TYPE_16__ {TYPE_3__* stat_ctx; } ;
typedef  TYPE_5__ compiler_ctx_t ;
struct TYPE_17__ {scalar_t__ identifier; } ;
typedef  TYPE_6__ branch_statement_t ;
struct TYPE_12__ {TYPE_2__* statement; int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_INVALID_CONTINUE ; 
 int /*<<< orphan*/  JS_E_LABEL_NOT_FOUND ; 
 int /*<<< orphan*/  OP_jmp ; 
 scalar_t__ STAT_LABEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC7(compiler_ctx_t *ctx, branch_statement_t *stat)
{
    statement_ctx_t *pop_ctx;
    HRESULT hres;

    if(stat->identifier) {
        statement_t *label_stat;
        statement_ctx_t *iter;

        pop_ctx = NULL;

        for(iter = ctx->stat_ctx; iter; iter = iter->next) {
            if(iter->continue_label)
                pop_ctx = iter;
            if(iter->labelled_stat && !FUNC6(iter->labelled_stat->identifier, stat->identifier))
                break;
        }

        if(!iter) {
            FUNC1("Label not found\n");
            return JS_E_LABEL_NOT_FOUND;
        }

        /* Labelled continue are allowed only on loops */
        for(label_stat = iter->labelled_stat->statement;
            label_stat->type == STAT_LABEL;
            label_stat = ((labelled_statement_t*)label_stat)->statement);
        if(!FUNC3(label_stat->type)) {
            FUNC1("Label is not a loop\n");
            return JS_E_INVALID_CONTINUE;
        }

        FUNC2(pop_ctx != NULL);
    }else {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->continue_label)
                break;
        }

        if(!pop_ctx) {
            FUNC1("continue outside loop\n");
            return JS_E_INVALID_CONTINUE;
        }
    }

    hres = FUNC4(ctx, pop_ctx);
    if(FUNC0(hres))
        return hres;

    return FUNC5(ctx, OP_jmp, pop_ctx->continue_label);
}