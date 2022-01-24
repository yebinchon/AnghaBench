#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * jsdisp; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {int /*<<< orphan*/  length; int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ ArrayInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_JSCRIPT_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lengthW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, vdisp_t *vdisp, jsdisp_t **jsthis, DWORD *ret)
{
    ArrayInstance *array;
    jsval_t val;
    HRESULT hres;

    array = FUNC1(vdisp);
    if(array) {
        *jsthis = &array->dispex;
        *ret = array->length;
        return S_OK;
    }

    if(!FUNC2(vdisp))
        return FUNC5(ctx, JS_E_JSCRIPT_EXPECTED, NULL);

    hres = FUNC3(vdisp->u.jsdisp, lengthW, &val);
    if(FUNC0(hres))
        return hres;

    hres = FUNC6(ctx, val, ret);
    FUNC4(val);
    if(FUNC0(hres))
        return hres;

    *jsthis = vdisp->u.jsdisp;
    return S_OK;
}