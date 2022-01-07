
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_signature {int string_data; int elements; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int TRACE (char*,struct d3dcompiler_shader_signature*) ;

__attribute__((used)) static void free_signature(struct d3dcompiler_shader_signature *sig)
{
    TRACE("Free signature %p\n", sig);

    HeapFree(GetProcessHeap(), 0, sig->elements);
    HeapFree(GetProcessHeap(), 0, sig->string_data);
}
