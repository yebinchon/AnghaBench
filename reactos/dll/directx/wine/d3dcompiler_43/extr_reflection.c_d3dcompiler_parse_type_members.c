
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection_type_member {int offset; int name; int type; } ;
struct d3dcompiler_shader_reflection {int dummy; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int ERR (char*) ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int S_OK ;
 int TRACE (char*,int) ;
 int copy_name (char const*,int *) ;
 int debugstr_a (int ) ;
 int get_reflection_type (struct d3dcompiler_shader_reflection*,char const*,int) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dcompiler_parse_type_members(struct d3dcompiler_shader_reflection *ref,
        struct d3dcompiler_shader_reflection_type_member *member, const char *data, const char **ptr)
{
    DWORD offset;

    read_dword(ptr, &offset);
    if (!copy_name(data + offset, &member->name))
    {
        ERR("Failed to copy name.\n");
        return E_OUTOFMEMORY;
    }
    TRACE("Member name: %s.\n", debugstr_a(member->name));

    read_dword(ptr, &offset);
    TRACE("Member type offset: %x\n", offset);

    member->type = get_reflection_type(ref, data, offset);
    if (!member->type)
    {
        ERR("Failed to get member type\n");
        HeapFree(GetProcessHeap(), 0, member->name);
        return E_FAIL;
    }

    read_dword(ptr, &member->offset);
    TRACE("Member offset %x\n", member->offset);

    return S_OK;
}
