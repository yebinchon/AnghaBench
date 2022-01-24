#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  global; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_2__ exprval_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ EXPRVAL_INVALID ; 
 scalar_t__ EXPRVAL_JSVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_OBJECT_EXPECTED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int fdexNameEnsure ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, BSTR identifier, unsigned flags)
{
    exprval_t exprval;
    HRESULT hres;

    hres = FUNC5(ctx, identifier, &exprval);
    if(FUNC0(hres))
        return hres;

    if(exprval.type == EXPRVAL_INVALID && (flags & fdexNameEnsure)) {
        DISPID id;

        hres = FUNC6(ctx->global, identifier, fdexNameEnsure, &id);
        if(FUNC0(hres))
            return hres;

        FUNC3(&exprval, FUNC8(ctx->global), id);
    }

    if(exprval.type == EXPRVAL_JSVAL || exprval.type == EXPRVAL_INVALID) {
        FUNC1("invalid ref\n");
        FUNC2(&exprval);
        FUNC4(&exprval, JS_E_OBJECT_EXPECTED);
    }

    return FUNC7(ctx, &exprval);
}