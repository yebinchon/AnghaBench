
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection_variable {int default_value; int name; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;

__attribute__((used)) static void free_variable(struct d3dcompiler_shader_reflection_variable *var)
{
    if (var)
    {
        HeapFree(GetProcessHeap(), 0, var->name);
        HeapFree(GetProcessHeap(), 0, var->default_value);
    }
}
