#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct d3dx_parameter {int element_count; unsigned int member_count; int rows; int columns; int bytes; int /*<<< orphan*/  name; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; int /*<<< orphan*/  class; struct d3dx_parameter* members; } ;
struct d3dx_const_tab {unsigned int const_set_count; size_t* regset2table; } ;
struct d3dx_const_param_eval_output {int element_count; size_t table; int direct_copy; int /*<<< orphan*/  register_count; int /*<<< orphan*/  register_index; int /*<<< orphan*/  constant_class; struct d3dx_parameter* param; } ;
struct const_upload_info {int count; scalar_t__ minor; scalar_t__ major_stride; scalar_t__ major_count; scalar_t__ major; scalar_t__ minor_remainder; int /*<<< orphan*/  transpose; } ;
typedef  enum pres_value_type { ____Placeholder_pres_value_type } pres_value_type ;
struct TYPE_5__ {int component_size; int type; } ;
struct TYPE_4__ {unsigned int Elements; unsigned int StructMembers; int RegisterSet; int /*<<< orphan*/  RegisterCount; int /*<<< orphan*/  RegisterIndex; int /*<<< orphan*/  Class; int /*<<< orphan*/  Bytes; int /*<<< orphan*/  Columns; int /*<<< orphan*/  Rows; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  ID3DXConstantTable ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;
typedef  TYPE_1__ D3DXCONSTANT_DESC ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 size_t PRES_REGTAB_COUNT ; 
 scalar_t__ PRES_VT_COUNT ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct d3dx_const_tab*,struct d3dx_const_param_eval_output*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct d3dx_const_param_eval_output*,struct const_upload_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct d3dx_const_tab*,struct d3dx_parameter*,unsigned int) ; 
 int /*<<< orphan*/  shad_regset2table ; 
 TYPE_2__* table_info ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC16(struct d3dx_const_tab *const_tab, ID3DXConstantTable *ctab,
        D3DXHANDLE hc, struct d3dx_parameter *param)
{
    D3DXCONSTANT_DESC desc;
    unsigned int const_count, param_count, i;
    BOOL get_element;
    struct d3dx_const_param_eval_output const_set;
    struct const_upload_info info;
    enum pres_value_type table_type;
    HRESULT hr;

    if (FUNC2(FUNC12(ctab, hc, &desc, NULL)))
        return D3DERR_INVALIDCALL;

    if (param->element_count)
    {
        param_count = param->element_count;
        const_count = desc.Elements;
        get_element = TRUE;
    }
    else
    {
        if (desc.Elements > 1)
        {
            FUNC3("Unexpected number of constant elements %u.\n", desc.Elements);
            return D3DERR_INVALIDCALL;
        }
        param_count = param->member_count;
        const_count = desc.StructMembers;
        get_element = FALSE;
    }
    if (const_count != param_count)
    {
        FUNC3("Number of elements or struct members differs between parameter (%u) and constant (%u).\n",
                param_count, const_count);
        return D3DERR_INVALIDCALL;
    }
    if (const_count)
    {
        HRESULT ret = D3D_OK;
        D3DXHANDLE hc_element;
        unsigned int index = const_tab->const_set_count;

        for (i = 0; i < const_count; ++i)
        {
            if (get_element)
                hc_element = FUNC5(ctab, hc, i);
            else
                hc_element = FUNC4(ctab, hc, i);
            if (!hc_element)
            {
                FUNC3("Could not get constant.\n");
                hr = D3DERR_INVALIDCALL;
            }
            else
            {
                hr = FUNC16(const_tab, ctab, hc_element, &param->members[i]);
            }
            if (FUNC2(hr))
                ret = hr;
        }
        if (FUNC2(ret))
            return ret;
        return FUNC14(const_tab, param, index);
    }

    FUNC6("Constant %s, rows %u, columns %u, class %u, bytes %u.\n",
            FUNC10(desc.Name), desc.Rows, desc.Columns, desc.Class, desc.Bytes);
    FUNC6("Parameter %s, rows %u, columns %u, class %u, flags %#x, bytes %u.\n",
            FUNC10(param->name), param->rows, param->columns, param->class,
            param->flags, param->bytes);

    const_set.element_count = 1;
    const_set.param = param;
    const_set.constant_class = desc.Class;
    if (desc.RegisterSet >= FUNC0(shad_regset2table))
    {
        FUNC3("Unknown register set %u.\n", desc.RegisterSet);
        return D3DERR_INVALIDCALL;
    }
    const_set.register_index = desc.RegisterIndex;
    const_set.table = const_tab->regset2table[desc.RegisterSet];
    if (const_set.table >= PRES_REGTAB_COUNT)
    {
        FUNC1("Unexpected register set %u.\n", desc.RegisterSet);
        return D3DERR_INVALIDCALL;
    }
    FUNC9(table_info[const_set.table].component_size == sizeof(unsigned int));
    FUNC9(param->bytes / (param->rows * param->columns) == sizeof(unsigned int));
    const_set.register_count = desc.RegisterCount;
    table_type = table_info[const_set.table].type;
    FUNC11(&const_set, &info);
    if (!info.count)
    {
        FUNC6("%s has zero count, skipping.\n", FUNC10(param->name));
        return D3D_OK;
    }

    if (FUNC15(param->type) == PRES_VT_COUNT)
        return D3DERR_INVALIDCALL;

    const_set.direct_copy = FUNC15(param->type) == table_type
            && !info.transpose && info.minor == info.major_stride
            && info.count == FUNC13(const_set.table, const_set.register_count)
            && info.count * sizeof(unsigned int) <= param->bytes;
    if (info.minor_remainder && !const_set.direct_copy && !info.transpose)
        FUNC3("Incomplete last row for not transposed matrix which cannot be directly copied, parameter %s.\n",
                FUNC10(param->name));

    if (info.major_count > info.major
            || (info.major_count == info.major && info.minor_remainder))
    {
        FUNC7("Constant dimensions exceed parameter size.\n");
        return D3DERR_INVALIDCALL;
    }

    if (FUNC2(hr = FUNC8(const_tab, &const_set)))
        return hr;

    return D3D_OK;
}