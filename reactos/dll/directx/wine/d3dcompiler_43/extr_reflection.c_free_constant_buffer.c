
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection_constant_buffer {unsigned int variable_count; int * name; int * variables; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int free_variable (int *) ;

__attribute__((used)) static void free_constant_buffer(struct d3dcompiler_shader_reflection_constant_buffer *cb)
{
    if (cb->variables)
    {
        unsigned int i;

        for (i = 0; i < cb->variable_count; ++i)
        {
            free_variable(&cb->variables[i]);
        }
        HeapFree(GetProcessHeap(), 0, cb->variables);
    }

    HeapFree(GetProcessHeap(), 0, cb->name);
}
