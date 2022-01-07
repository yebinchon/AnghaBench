
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct d3dcompiler_shader_reflection_type_member {int dummy; } ;
struct TYPE_3__ {int Class; int Type; int Rows; int Columns; int Elements; int Members; int Name; } ;
struct d3dcompiler_shader_reflection_type {struct d3dcompiler_shader_reflection_type_member* members; int name; TYPE_2__* reflection; TYPE_1__ desc; } ;
struct TYPE_4__ {int target; } ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_1__ D3D11_SHADER_TYPE_DESC ;


 int D3DCOMPILER_SHADER_TARGET_VERSION_MASK ;
 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 struct d3dcompiler_shader_reflection_type_member* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct d3dcompiler_shader_reflection_type_member*) ;
 int S_OK ;
 int TRACE (char*,int,...) ;
 int copy_name (char const*,int *) ;
 int d3dcompiler_parse_type_members (TYPE_2__*,struct d3dcompiler_shader_reflection_type_member*,char const*,char const**) ;
 int debug_d3dcompiler_shader_variable_class (int) ;
 int debug_d3dcompiler_shader_variable_type (int) ;
 int debugstr_a (int ) ;
 int free_type_member (struct d3dcompiler_shader_reflection_type_member*) ;
 int heap_free (struct d3dcompiler_shader_reflection_type_member*) ;
 int read_dword (char const**,int*) ;
 int skip_dword_unknown (char const**,int) ;

__attribute__((used)) static HRESULT d3dcompiler_parse_type(struct d3dcompiler_shader_reflection_type *type, const char *data, DWORD offset)
{
    const char *ptr = data + offset;
    DWORD temp;
    D3D11_SHADER_TYPE_DESC *desc;
    unsigned int i;
    struct d3dcompiler_shader_reflection_type_member *members = ((void*)0);
    HRESULT hr;
    DWORD member_offset;

    desc = &type->desc;

    read_dword(&ptr, &temp);
    desc->Class = temp & 0xffff;
    desc->Type = temp >> 16;
    TRACE("Class %s, Type %s\n", debug_d3dcompiler_shader_variable_class(desc->Class),
            debug_d3dcompiler_shader_variable_type(desc->Type));

    read_dword(&ptr, &temp);
    desc->Rows = temp & 0xffff;
    desc->Columns = temp >> 16;
    TRACE("Rows %u, Columns %u\n", desc->Rows, desc->Columns);

    read_dword(&ptr, &temp);
    desc->Elements = temp & 0xffff;
    desc->Members = temp >> 16;
    TRACE("Elements %u, Members %u\n", desc->Elements, desc->Members);

    read_dword(&ptr, &member_offset);
    TRACE("Member Offset %u\n", member_offset);

    if ((type->reflection->target & D3DCOMPILER_SHADER_TARGET_VERSION_MASK) >= 0x500)
        skip_dword_unknown(&ptr, 4);

    if (desc->Members)
    {
        const char *ptr2 = data + member_offset;

        members = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*members) * desc->Members);
        if (!members)
        {
            ERR("Failed to allocate type memory.\n");
            return E_OUTOFMEMORY;
        }

        for (i = 0; i < desc->Members; ++i)
        {
            hr = d3dcompiler_parse_type_members(type->reflection, &members[i], data, &ptr2);
            if (hr != S_OK)
            {
                FIXME("Failed to parse type members.\n");
                goto err_out;
            }
        }
    }

    if ((type->reflection->target & D3DCOMPILER_SHADER_TARGET_VERSION_MASK) >= 0x500)
    {
        read_dword(&ptr, &offset);
        if (!copy_name(data + offset, &type->name))
        {
            ERR("Failed to copy name.\n");
            heap_free(members);
            return E_OUTOFMEMORY;
        }
        desc->Name = type->name;
        TRACE("Type name: %s.\n", debugstr_a(type->name));
    }

    type->members = members;

    return S_OK;

err_out:
    for (i = 0; i < desc->Members; ++i)
    {
        free_type_member(&members[i]);
    }
    HeapFree(GetProcessHeap(), 0, members);
    return hr;
}
