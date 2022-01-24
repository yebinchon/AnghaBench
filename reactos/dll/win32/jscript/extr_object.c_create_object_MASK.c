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
struct TYPE_4__ {int /*<<< orphan*/ * object_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ObjectInst_info ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC4(script_ctx_t *ctx, jsdisp_t *constr, jsdisp_t **ret)
{
    jsdisp_t *object;
    HRESULT hres;

    object = FUNC1(sizeof(jsdisp_t));
    if(!object)
        return E_OUTOFMEMORY;

    hres = FUNC3(object, ctx, &ObjectInst_info, constr ? constr : ctx->object_constr);
    if(FUNC0(hres)) {
        FUNC2(object);
        return hres;
    }

    *ret = object;
    return S_OK;
}