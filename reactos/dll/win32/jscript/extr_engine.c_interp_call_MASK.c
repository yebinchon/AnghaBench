#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  acc; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ; 
 int DISPATCH_METHOD ; 
 int /*<<< orphan*/  JS_E_INVALID_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 unsigned int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx)
{
    const unsigned argn = FUNC5(ctx, 0);
    const int do_ret = FUNC4(ctx, 1);
    jsval_t obj;

    FUNC0("%d %d\n", argn, do_ret);

    obj = FUNC8(ctx, argn);
    if(!FUNC6(obj))
        return FUNC9(ctx, JS_E_INVALID_PROPERTY, NULL);

    FUNC1(ctx);
    return FUNC2(ctx, FUNC3(obj), NULL, DISPATCH_METHOD | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
                           argn, FUNC7(ctx, argn), do_ret ? &ctx->acc : NULL);
}