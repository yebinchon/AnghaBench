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
struct TYPE_9__ {int /*<<< orphan*/  array_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ ArrayInstance ;

/* Variables and functions */
 int /*<<< orphan*/  ArrayInst_info ; 
 int /*<<< orphan*/  Array_info ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *object_prototype, ArrayInstance **ret)
{
    ArrayInstance *array;
    HRESULT hres;

    array = FUNC1(sizeof(ArrayInstance));
    if(!array)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = FUNC3(&array->dispex, ctx, &Array_info, object_prototype);
    else
        hres = FUNC4(&array->dispex, ctx, &ArrayInst_info, ctx->array_constr);

    if(FUNC0(hres)) {
        FUNC2(array);
        return hres;
    }

    *ret = array;
    return S_OK;
}