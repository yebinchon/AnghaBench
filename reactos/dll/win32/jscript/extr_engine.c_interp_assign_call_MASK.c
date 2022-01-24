#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  exprval_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_ILLEGAL_ASSIGN ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx)
{
    const unsigned argc = FUNC3(ctx, 0);
    exprval_t ref;
    jsval_t v;
    HRESULT hres;

    FUNC1("%u\n", argc);

    if(!FUNC8(ctx, argc+1, &ref))
        return FUNC9(ctx, JS_E_ILLEGAL_ASSIGN, NULL);

    hres = FUNC2(ctx, &ref, DISPATCH_PROPERTYPUT, argc+1, FUNC4(ctx, argc+1), NULL);
    if(FUNC0(hres))
        return hres;

    v = FUNC5(ctx);
    FUNC6(ctx, argc+2);
    return FUNC7(ctx, v);
}