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
struct TYPE_9__ {int /*<<< orphan*/  number_constr; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
struct TYPE_10__ {int /*<<< orphan*/  dispex; } ;
typedef  TYPE_2__ NumberInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NumberInst_info ; 
 int /*<<< orphan*/  Number_info ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(script_ctx_t *ctx, jsdisp_t *object_prototype, NumberInstance **ret)
{
    NumberInstance *number;
    HRESULT hres;

    number = FUNC1(sizeof(NumberInstance));
    if(!number)
        return E_OUTOFMEMORY;

    if(object_prototype)
        hres = FUNC3(&number->dispex, ctx, &Number_info, object_prototype);
    else
        hres = FUNC4(&number->dispex, ctx, &NumberInst_info, ctx->number_constr);
    if(FUNC0(hres)) {
        FUNC2(number);
        return hres;
    }

    *ret = number;
    return S_OK;
}