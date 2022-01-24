#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * error_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  ErrorInst_info ; 
 int /*<<< orphan*/  Error_info ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *prototype,
        jsdisp_t *constr, jsdisp_t **ret)
{
    jsdisp_t *err;
    HRESULT hres;

    err = FUNC1(sizeof(*err));
    if(!err)
        return E_OUTOFMEMORY;

    if(prototype)
        hres = FUNC3(err, ctx, &Error_info, prototype);
    else
        hres = FUNC4(err, ctx, &ErrorInst_info,
            constr ? constr : ctx->error_constr);
    if(FUNC0(hres)) {
        FUNC2(err);
        return hres;
    }

    *ret = err;
    return S_OK;
}