
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection_type_member {int name; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void free_type_member(struct d3dcompiler_shader_reflection_type_member *member)
{
    if (member)
    {
        HeapFree(GetProcessHeap(), 0, member->name);
    }
}
