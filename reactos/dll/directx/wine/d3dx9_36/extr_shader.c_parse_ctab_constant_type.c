
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* DefaultValue; scalar_t__ Class; int Rows; int Columns; int Elements; int StructMembers; char const* Name; int RegisterSet; int RegisterIndex; int Bytes; scalar_t__ RegisterCount; int Type; } ;
struct ctab_constant {struct ctab_constant* constants; TYPE_1__ desc; } ;
typedef int WORD ;
typedef int UINT ;
struct TYPE_7__ {int TypeInfo; int Name; } ;
struct TYPE_6__ {scalar_t__ Class; int Rows; int Columns; int Elements; int StructMembers; int StructMemberInfo; int Type; } ;
typedef TYPE_2__* LPD3DXSHADER_TYPEINFO ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef TYPE_2__ D3DXSHADER_TYPEINFO ;
typedef TYPE_4__ D3DXSHADER_STRUCTMEMBERINFO ;
typedef int BOOL ;




 int D3DXPC_OBJECT ;

 scalar_t__ D3DXPC_STRUCT ;





 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 int FALSE ;
 int FIXME (char*,int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct ctab_constant* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct ctab_constant*) ;
 int TRACE (char*,char const*,int,int,...) ;
 int TRUE ;
 int debug_d3dxparameter_class (scalar_t__) ;
 int debug_d3dxparameter_registerset (int) ;
 int debug_d3dxparameter_type (int ) ;
 int free_constant (struct ctab_constant*) ;
 scalar_t__ max (int ,int ) ;
 int min (int,int) ;

__attribute__((used)) static HRESULT parse_ctab_constant_type(const char *ctab, DWORD typeoffset, struct ctab_constant *constant,
        BOOL is_element, WORD index, WORD max_index, DWORD *offset, DWORD nameoffset, UINT regset)
{
    const D3DXSHADER_TYPEINFO *type = (LPD3DXSHADER_TYPEINFO)(ctab + typeoffset);
    const D3DXSHADER_STRUCTMEMBERINFO *memberinfo = ((void*)0);
    HRESULT hr = D3D_OK;
    UINT i, count = 0;
    WORD size = 0;

    constant->desc.DefaultValue = offset ? ctab + *offset : ((void*)0);
    constant->desc.Class = type->Class;
    constant->desc.Type = type->Type;
    constant->desc.Rows = type->Rows;
    constant->desc.Columns = type->Columns;
    constant->desc.Elements = is_element ? 1 : type->Elements;
    constant->desc.StructMembers = type->StructMembers;
    constant->desc.Name = ctab + nameoffset;
    constant->desc.RegisterSet = regset;
    constant->desc.RegisterIndex = index;

    TRACE("name %s, elements %u, index %u, defaultvalue %p, regset %s\n", constant->desc.Name,
            constant->desc.Elements, index, constant->desc.DefaultValue,
            debug_d3dxparameter_registerset(regset));
    TRACE("class %s, type %s, rows %d, columns %d, elements %d, struct_members %d\n",
            debug_d3dxparameter_class(type->Class), debug_d3dxparameter_type(type->Type),
            type->Rows, type->Columns, type->Elements, type->StructMembers);

    if (type->Elements > 1 && !is_element)
    {
        count = type->Elements;
    }
    else if ((type->Class == D3DXPC_STRUCT) && type->StructMembers)
    {
        memberinfo = (D3DXSHADER_STRUCTMEMBERINFO*)(ctab + type->StructMemberInfo);
        count = type->StructMembers;
    }

    if (count)
    {
        constant->constants = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*constant->constants) * count);
        if (!constant->constants)
        {
             ERR("Out of memory\n");
             hr = E_OUTOFMEMORY;
             goto error;
        }

        for (i = 0; i < count; ++i)
        {
            hr = parse_ctab_constant_type(ctab, memberinfo ? memberinfo[i].TypeInfo : typeoffset,
                    &constant->constants[i], memberinfo == ((void*)0), index + size, max_index, offset,
                    memberinfo ? memberinfo[i].Name : nameoffset, regset);
            if (hr != D3D_OK)
                goto error;

            size += constant->constants[i].desc.RegisterCount;
        }
    }
    else
    {
        WORD offsetdiff = type->Columns * type->Rows;
        BOOL fail = FALSE;

        size = type->Columns * type->Rows;

        switch (regset)
        {
            case 131:
                fail = type->Class != 133 && type->Class != 132
                        && type->Class != 134 && type->Class != 135;
                break;

            case 130:
            case 129:
                switch (type->Class)
                {
                    case 132:
                        size = 1;

                    case 133:
                        offsetdiff = type->Rows * 4;
                        break;

                    case 134:
                        offsetdiff = type->Rows * 4;
                        size = type->Rows;
                        break;

                    case 135:
                        offsetdiff = type->Columns * 4;
                        size = type->Columns;
                        break;

                    default:
                        fail = TRUE;
                        break;
                }
                break;

            case 128:
                size = 1;
                fail = type->Class != D3DXPC_OBJECT;
                break;

            default:
                fail = TRUE;
                break;
        }

        if (fail)
        {
            FIXME("Unhandled register set %s, type class %s\n", debug_d3dxparameter_registerset(regset),
                    debug_d3dxparameter_class(type->Class));
        }


        if (offset) *offset += offsetdiff * 4;
    }

    constant->desc.RegisterCount = max(0, min(max_index - index, size));
    constant->desc.Bytes = 4 * constant->desc.Elements * type->Rows * type->Columns;

    return D3D_OK;

error:
    if (constant->constants)
    {
        for (i = 0; i < count; ++i)
        {
            free_constant(&constant->constants[i]);
        }
        HeapFree(GetProcessHeap(), 0, constant->constants);
        constant->constants = ((void*)0);
    }

    return hr;
}
