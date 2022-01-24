#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  break_label; TYPE_1__* labelled_stat; struct TYPE_12__* next; TYPE_3__* member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ statement_ctx_t ;
struct TYPE_13__ {int /*<<< orphan*/  statement; int /*<<< orphan*/  identifier; } ;
typedef  TYPE_3__ labelled_statement_t ;
struct TYPE_14__ {TYPE_2__* stat_ctx; } ;
typedef  TYPE_4__ compiler_ctx_t ;
struct TYPE_11__ {int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JS_E_LABEL_REDEFINED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC7(compiler_ctx_t *ctx, labelled_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0, FALSE, FALSE, 0, 0, stat}, *iter;
    HRESULT hres;

    for(iter = ctx->stat_ctx; iter; iter = iter->next) {
        if(iter->labelled_stat && !FUNC6(iter->labelled_stat->identifier, stat->identifier)) {
            FUNC1("Label %s redefined\n", FUNC4(stat->identifier));
            return JS_E_LABEL_REDEFINED;
        }
    }

    /* Labelled breaks are allowed for any labelled statements, not only loops (violating spec) */
    stat_ctx.break_label = FUNC2(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    hres = FUNC3(ctx, &stat_ctx, stat->statement);
    if(FUNC0(hres))
        return hres;

    FUNC5(ctx, stat_ctx.break_label);
    return S_OK;
}