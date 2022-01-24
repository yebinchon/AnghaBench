#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  char WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  dispex; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ ArrayInstance ;

/* Variables and functions */
 int /*<<< orphan*/  ArrayConstr_info ; 
 int /*<<< orphan*/  ArrayConstr_value ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_CONSTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

HRESULT FUNC4(script_ctx_t *ctx, jsdisp_t *object_prototype, jsdisp_t **ret)
{
    ArrayInstance *array;
    HRESULT hres;

    static const WCHAR ArrayW[] = {'A','r','r','a','y',0};

    hres = FUNC1(ctx, object_prototype, &array);
    if(FUNC0(hres))
        return hres;

    hres = FUNC2(ctx, ArrayConstr_value, ArrayW, &ArrayConstr_info, PROPF_CONSTR|1, &array->dispex, ret);

    FUNC3(&array->dispex);
    return hres;
}