
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct d3dx_parameter {int element_count; unsigned int member_count; int rows; int columns; int bytes; int name; int type; int flags; int class; struct d3dx_parameter* members; } ;
struct d3dx_const_tab {unsigned int const_set_count; size_t* regset2table; } ;
struct d3dx_const_param_eval_output {int element_count; size_t table; int direct_copy; int register_count; int register_index; int constant_class; struct d3dx_parameter* param; } ;
struct const_upload_info {int count; scalar_t__ minor; scalar_t__ major_stride; scalar_t__ major_count; scalar_t__ major; scalar_t__ minor_remainder; int transpose; } ;
typedef enum pres_value_type { ____Placeholder_pres_value_type } pres_value_type ;
struct TYPE_5__ {int component_size; int type; } ;
struct TYPE_4__ {unsigned int Elements; unsigned int StructMembers; int RegisterSet; int RegisterCount; int RegisterIndex; int Class; int Bytes; int Columns; int Rows; int Name; } ;
typedef int ID3DXConstantTable ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;
typedef TYPE_1__ D3DXCONSTANT_DESC ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int ) ;
 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int ERR (char*,size_t) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int FIXME (char*,...) ;
 int ID3DXConstantTable_GetConstant (int *,int ,unsigned int) ;
 int ID3DXConstantTable_GetConstantElement (int *,int ,unsigned int) ;
 size_t PRES_REGTAB_COUNT ;
 scalar_t__ PRES_VT_COUNT ;
 int TRACE (char*,int,...) ;
 scalar_t__ TRUE ;
 int WARN (char*) ;
 int append_const_set (struct d3dx_const_tab*,struct d3dx_const_param_eval_output*) ;
 int assert (int) ;
 int debugstr_a (int ) ;
 int get_const_upload_info (struct d3dx_const_param_eval_output*,struct const_upload_info*) ;
 int get_ctab_constant_desc (int *,int ,TYPE_1__*,int *) ;
 int get_offset_reg (size_t,int ) ;
 int merge_const_set_entries (struct d3dx_const_tab*,struct d3dx_parameter*,unsigned int) ;
 int shad_regset2table ;
 TYPE_2__* table_info ;
 int table_type_from_param_type (int ) ;

__attribute__((used)) static HRESULT init_set_constants_param(struct d3dx_const_tab *const_tab, ID3DXConstantTable *ctab,
        D3DXHANDLE hc, struct d3dx_parameter *param)
{
    D3DXCONSTANT_DESC desc;
    unsigned int const_count, param_count, i;
    BOOL get_element;
    struct d3dx_const_param_eval_output const_set;
    struct const_upload_info info;
    enum pres_value_type table_type;
    HRESULT hr;

    if (FAILED(get_ctab_constant_desc(ctab, hc, &desc, ((void*)0))))
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
            FIXME("Unexpected number of constant elements %u.\n", desc.Elements);
            return D3DERR_INVALIDCALL;
        }
        param_count = param->member_count;
        const_count = desc.StructMembers;
        get_element = FALSE;
    }
    if (const_count != param_count)
    {
        FIXME("Number of elements or struct members differs between parameter (%u) and constant (%u).\n",
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
                hc_element = ID3DXConstantTable_GetConstantElement(ctab, hc, i);
            else
                hc_element = ID3DXConstantTable_GetConstant(ctab, hc, i);
            if (!hc_element)
            {
                FIXME("Could not get constant.\n");
                hr = D3DERR_INVALIDCALL;
            }
            else
            {
                hr = init_set_constants_param(const_tab, ctab, hc_element, &param->members[i]);
            }
            if (FAILED(hr))
                ret = hr;
        }
        if (FAILED(ret))
            return ret;
        return merge_const_set_entries(const_tab, param, index);
    }

    TRACE("Constant %s, rows %u, columns %u, class %u, bytes %u.\n",
            debugstr_a(desc.Name), desc.Rows, desc.Columns, desc.Class, desc.Bytes);
    TRACE("Parameter %s, rows %u, columns %u, class %u, flags %#x, bytes %u.\n",
            debugstr_a(param->name), param->rows, param->columns, param->class,
            param->flags, param->bytes);

    const_set.element_count = 1;
    const_set.param = param;
    const_set.constant_class = desc.Class;
    if (desc.RegisterSet >= ARRAY_SIZE(shad_regset2table))
    {
        FIXME("Unknown register set %u.\n", desc.RegisterSet);
        return D3DERR_INVALIDCALL;
    }
    const_set.register_index = desc.RegisterIndex;
    const_set.table = const_tab->regset2table[desc.RegisterSet];
    if (const_set.table >= PRES_REGTAB_COUNT)
    {
        ERR("Unexpected register set %u.\n", desc.RegisterSet);
        return D3DERR_INVALIDCALL;
    }
    assert(table_info[const_set.table].component_size == sizeof(unsigned int));
    assert(param->bytes / (param->rows * param->columns) == sizeof(unsigned int));
    const_set.register_count = desc.RegisterCount;
    table_type = table_info[const_set.table].type;
    get_const_upload_info(&const_set, &info);
    if (!info.count)
    {
        TRACE("%s has zero count, skipping.\n", debugstr_a(param->name));
        return D3D_OK;
    }

    if (table_type_from_param_type(param->type) == PRES_VT_COUNT)
        return D3DERR_INVALIDCALL;

    const_set.direct_copy = table_type_from_param_type(param->type) == table_type
            && !info.transpose && info.minor == info.major_stride
            && info.count == get_offset_reg(const_set.table, const_set.register_count)
            && info.count * sizeof(unsigned int) <= param->bytes;
    if (info.minor_remainder && !const_set.direct_copy && !info.transpose)
        FIXME("Incomplete last row for not transposed matrix which cannot be directly copied, parameter %s.\n",
                debugstr_a(param->name));

    if (info.major_count > info.major
            || (info.major_count == info.major && info.minor_remainder))
    {
        WARN("Constant dimensions exceed parameter size.\n");
        return D3DERR_INVALIDCALL;
    }

    if (FAILED(hr = append_const_set(const_tab, &const_set)))
        return hr;

    return D3D_OK;
}
