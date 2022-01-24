#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ exprval_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ EXPRVAL_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx)
{
    const BSTR arg = FUNC4(ctx, 0);
    exprval_t exprval;
    const WCHAR *ret;
    jsval_t v;
    HRESULT hres;

    FUNC1("%s\n", FUNC2(arg));

    hres = FUNC5(ctx, arg, &exprval);
    if(FUNC0(hres))
        return hres;

    if(exprval.type == EXPRVAL_INVALID)
        return FUNC9(ctx, FUNC8(FUNC6()));

    hres = FUNC3(ctx, &exprval, &v);
    if(FUNC0(hres))
        return hres;

    hres = FUNC11(v, &ret);
    FUNC7(v);
    if(FUNC0(hres))
        return hres;

    return FUNC10(ctx, ret);
}