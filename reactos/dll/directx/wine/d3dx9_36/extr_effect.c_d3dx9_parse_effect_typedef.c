
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {size_t flags; int class; int element_count; int columns; int rows; int bytes; int member_count; struct d3dx_parameter* semantic; struct d3dx_parameter* name; struct d3dx_parameter* members; scalar_t__ type; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 int FIXME (char*,int) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct d3dx_parameter*) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WARN (char*,...) ;
 scalar_t__ d3dx9_parse_name (struct d3dx_parameter**,char const*) ;
 int debug_d3dxparameter_class (int) ;
 int debug_d3dxparameter_type (scalar_t__) ;
 int free_parameter (struct d3dx_parameter*,int,int ) ;
 int param_set_magic_number (struct d3dx_parameter*) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dx9_parse_effect_typedef(struct d3dx9_base_effect *base, struct d3dx_parameter *param,
 const char *data, const char **ptr, struct d3dx_parameter *parent, UINT flags)
{
    DWORD offset;
    HRESULT hr;
    UINT i;

    param->flags = flags;

    if (!parent)
    {
        read_dword(ptr, (DWORD *)&param->type);
        TRACE("Type: %s\n", debug_d3dxparameter_type(param->type));

        read_dword(ptr, (DWORD *)&param->class);
        TRACE("Class: %s\n", debug_d3dxparameter_class(param->class));

        read_dword(ptr, &offset);
        TRACE("Type name offset: %#x\n", offset);
        hr = d3dx9_parse_name(&param->name, data + offset);
        if (hr != D3D_OK)
        {
            WARN("Failed to parse name\n");
            goto err_out;
        }

        read_dword(ptr, &offset);
        TRACE("Type semantic offset: %#x\n", offset);
        hr = d3dx9_parse_name(&param->semantic, data + offset);
        if (hr != D3D_OK)
        {
            WARN("Failed to parse semantic\n");
            goto err_out;
        }

        read_dword(ptr, &param->element_count);
        TRACE("Elements: %u\n", param->element_count);

        switch (param->class)
        {
            case 141:
                read_dword(ptr, &param->columns);
                TRACE("Columns: %u\n", param->columns);

                read_dword(ptr, &param->rows);
                TRACE("Rows: %u\n", param->rows);


                param->bytes = 4 * param->rows * param->columns;
                break;

            case 143:
            case 145:
            case 146:
                read_dword(ptr, &param->rows);
                TRACE("Rows: %u\n", param->rows);

                read_dword(ptr, &param->columns);
                TRACE("Columns: %u\n", param->columns);


                param->bytes = 4 * param->rows * param->columns;
                break;

            case 142:
                read_dword(ptr, &param->member_count);
                TRACE("Members: %u\n", param->member_count);
                break;

            case 144:
                switch (param->type)
                {
                    case 134:
                    case 140:
                    case 128:
                    case 133:
                    case 132:
                    case 131:
                    case 130:
                    case 129:
                        param->bytes = sizeof(void *);
                        break;

                    case 139:
                    case 138:
                    case 137:
                    case 136:
                    case 135:
                        param->bytes = 0;
                        break;

                    default:
                        FIXME("Unhandled type %s\n", debug_d3dxparameter_type(param->type));
                        break;
                }
                break;

            default:
                FIXME("Unhandled class %s\n", debug_d3dxparameter_class(param->class));
                break;
        }
    }
    else
    {

        param->type = parent->type;
        param->class = parent->class;
        param->name = parent->name;
        param->semantic = parent->semantic;
        param->element_count = 0;
        param->member_count = parent->member_count;
        param->bytes = parent->bytes;
        param->rows = parent->rows;
        param->columns = parent->columns;
    }

    if (param->element_count)
    {
        unsigned int param_bytes = 0;
        const char *save_ptr = *ptr;

        param->members = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*param->members) * param->element_count);
        if (!param->members)
        {
            ERR("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < param->element_count; ++i)
        {
            *ptr = save_ptr;

            param_set_magic_number(&param->members[i]);
            hr = d3dx9_parse_effect_typedef(base, &param->members[i], data, ptr, param, flags);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse member %u\n", i);
                goto err_out;
            }

            param_bytes += param->members[i].bytes;
        }

        param->bytes = param_bytes;
    }
    else if (param->member_count)
    {
        param->members = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*param->members) * param->member_count);
        if (!param->members)
        {
            ERR("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < param->member_count; ++i)
        {
            param_set_magic_number(&param->members[i]);
            hr = d3dx9_parse_effect_typedef(base, &param->members[i], data, ptr, ((void*)0), flags);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse member %u\n", i);
                goto err_out;
            }

            param->bytes += param->members[i].bytes;
        }
    }
    return D3D_OK;

err_out:

    if (param->members)
    {
        unsigned int count = param->element_count ? param->element_count : param->member_count;

        for (i = 0; i < count; ++i)
            free_parameter(&param->members[i], param->element_count != 0, TRUE);
        HeapFree(GetProcessHeap(), 0, param->members);
        param->members = ((void*)0);
    }

    if (!parent)
    {
        HeapFree(GetProcessHeap(), 0, param->name);
        HeapFree(GetProcessHeap(), 0, param->semantic);
    }
    param->name = ((void*)0);
    param->semantic = ((void*)0);

    return hr;
}
