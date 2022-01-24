#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ break_label; struct TYPE_11__* next; TYPE_1__* labelled_stat; } ;
typedef  TYPE_2__ statement_ctx_t ;
struct TYPE_12__ {TYPE_2__* stat_ctx; } ;
typedef  TYPE_3__ compiler_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  identifier; } ;
typedef  TYPE_4__ branch_statement_t ;
struct TYPE_10__ {int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_INVALID_BREAK ; 
 int /*<<< orphan*/  JS_E_LABEL_NOT_FOUND ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC6(compiler_ctx_t *ctx, branch_statement_t *stat)
{
    statement_ctx_t *pop_ctx;
    HRESULT hres;

    if(stat->identifier) {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->labelled_stat && !FUNC5(pop_ctx->labelled_stat->identifier, stat->identifier)) {
                FUNC2(pop_ctx->break_label);
                break;
            }
        }

        if(!pop_ctx) {
            FUNC1("Label not found\n");
            return JS_E_LABEL_NOT_FOUND;
        }
    }else {
        for(pop_ctx = ctx->stat_ctx; pop_ctx; pop_ctx = pop_ctx->next) {
            if(pop_ctx->break_label && !pop_ctx->labelled_stat)
                break;
        }

        if(!pop_ctx) {
            FUNC1("Break outside loop\n");
            return JS_E_INVALID_BREAK;
        }
    }

    hres = FUNC3(ctx, pop_ctx->next);
    if(FUNC0(hres))
        return hres;

    return FUNC4(ctx, OP_jmp, pop_ctx->break_label);
}