#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  acc; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int DISPATCH_CONSTRUCT ; 
 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ; 
 int /*<<< orphan*/  JS_E_INVALID_ACTION ; 
 int /*<<< orphan*/  JS_E_INVALID_PROPERTY ; 
 int /*<<< orphan*/  JS_E_OBJECT_EXPECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx)
{
    const unsigned argc = FUNC4(ctx, 0);
    jsval_t constr;

    FUNC0("%d\n", argc);

    constr = FUNC8(ctx, argc);

    /* NOTE: Should use to_object here */

    if(FUNC5(constr))
        return FUNC9(ctx, JS_E_OBJECT_EXPECTED, NULL);
    else if(!FUNC6(constr))
        return FUNC9(ctx, JS_E_INVALID_ACTION, NULL);
    else if(!FUNC3(constr))
        return FUNC9(ctx, JS_E_INVALID_PROPERTY, NULL);

    FUNC1(ctx);
    return FUNC2(ctx, FUNC3(constr), NULL, DISPATCH_CONSTRUCT | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
                           argc, FUNC7(ctx, argc), &ctx->acc);
}