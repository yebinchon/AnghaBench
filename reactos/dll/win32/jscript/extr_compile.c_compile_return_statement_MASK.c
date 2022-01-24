#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ expr; } ;
typedef  TYPE_1__ expression_statement_t ;
struct TYPE_10__ {scalar_t__ from_eval; } ;
typedef  TYPE_2__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_MISPLACED_RETURN ; 
 int /*<<< orphan*/  OP_ret ; 
 int /*<<< orphan*/  OP_setret ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC6(compiler_ctx_t *ctx, expression_statement_t *stat)
{
    HRESULT hres;

    if(ctx->from_eval) {
        FUNC1("misplaced return statement\n");
        return JS_E_MISPLACED_RETURN;
    }

    if(stat->expr) {
        hres = FUNC2(ctx, stat->expr, TRUE);
        if(FUNC0(hres))
            return hres;
        if(!FUNC4(ctx, OP_setret))
            return E_OUTOFMEMORY;
    }

    hres = FUNC3(ctx, NULL);
    if(FUNC0(hres))
        return hres;

    return FUNC5(ctx, OP_ret, !stat->expr);
}