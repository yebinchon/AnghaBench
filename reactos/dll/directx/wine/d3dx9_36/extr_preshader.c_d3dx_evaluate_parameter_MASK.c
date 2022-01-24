#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct d3dx_parameter {int bytes; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {scalar_t__* tables; int /*<<< orphan*/ * table_sizes; } ;
struct TYPE_4__ {TYPE_1__ regs; int /*<<< orphan*/  inputs; } ;
struct d3dx_param_eval {TYPE_2__ pres; int /*<<< orphan*/  param_type; int /*<<< orphan*/  version_counter; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXPT_FLOAT ; 
 int /*<<< orphan*/  D3D_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 size_t PRES_REGTAB_OCONST ; 
 int /*<<< orphan*/  FUNC1 (char*,struct d3dx_param_eval*,struct d3dx_parameter const*,void*) ; 
 int /*<<< orphan*/  ULONG64_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 unsigned int FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 

HRESULT FUNC9(struct d3dx_param_eval *peval, const struct d3dx_parameter *param,
        void *param_value)
{
    HRESULT hr;
    unsigned int i;
    unsigned int elements, elements_param, elements_table;
    float *oc;

    FUNC1("peval %p, param %p, param_value %p.\n", peval, param, param_value);

    if (FUNC4(&peval->pres.inputs, ULONG64_MAX))
    {
        FUNC7(&peval->pres.regs, &peval->pres.inputs,
                FUNC6(peval->version_counter),
                NULL, NULL, peval->param_type, FALSE, FALSE);

        if (FUNC0(hr = FUNC2(&peval->pres)))
            return hr;
    }

    elements_table = FUNC3(PRES_REGTAB_OCONST, peval->pres.regs.table_sizes[PRES_REGTAB_OCONST]);
    elements_param = param->bytes / sizeof(unsigned int);
    elements = FUNC5(elements_table, elements_param);
    oc = (float *)peval->pres.regs.tables[PRES_REGTAB_OCONST];
    for (i = 0; i < elements; ++i)
        FUNC8((unsigned int *)param_value + i, param->type, oc + i, D3DXPT_FLOAT);
    return D3D_OK;
}