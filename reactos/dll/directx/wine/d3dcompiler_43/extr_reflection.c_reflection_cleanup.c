
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dcompiler_shader_reflection {unsigned int constant_buffer_count; int * creator; int * resource_string; int * bound_resources; int * constant_buffers; int types; int * pcsg; int * osgn; int * isgn; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,struct d3dcompiler_shader_reflection*) ;
 int d3dcompiler_shader_reflection_type_destroy ;
 int free_constant_buffer (int *) ;
 int free_signature (int *) ;
 int wine_rb_destroy (int *,int ,int *) ;

__attribute__((used)) static void reflection_cleanup(struct d3dcompiler_shader_reflection *ref)
{
    TRACE("Cleanup %p\n", ref);

    if (ref->isgn)
    {
        free_signature(ref->isgn);
        HeapFree(GetProcessHeap(), 0, ref->isgn);
    }

    if (ref->osgn)
    {
        free_signature(ref->osgn);
        HeapFree(GetProcessHeap(), 0, ref->osgn);
    }

    if (ref->pcsg)
    {
        free_signature(ref->pcsg);
        HeapFree(GetProcessHeap(), 0, ref->pcsg);
    }

    if (ref->constant_buffers)
    {
        unsigned int i;

        for (i = 0; i < ref->constant_buffer_count; ++i)
        {
            free_constant_buffer(&ref->constant_buffers[i]);
        }
    }

    wine_rb_destroy(&ref->types, d3dcompiler_shader_reflection_type_destroy, ((void*)0));
    HeapFree(GetProcessHeap(), 0, ref->constant_buffers);
    HeapFree(GetProcessHeap(), 0, ref->bound_resources);
    HeapFree(GetProcessHeap(), 0, ref->resource_string);
    HeapFree(GetProcessHeap(), 0, ref->creator);
}
