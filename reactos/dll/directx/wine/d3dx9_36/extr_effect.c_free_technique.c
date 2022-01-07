
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {unsigned int annotation_count; unsigned int pass_count; int * name; int * passes; int * annotations; int * saved_state; } ;


 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDirect3DStateBlock9_Release (int *) ;
 int TRACE (char*,struct d3dx_technique*) ;
 int free_parameter (int *,int ,int ) ;
 int free_pass (int *) ;

__attribute__((used)) static void free_technique(struct d3dx_technique *technique)
{
    unsigned int i;

    TRACE("Free technique %p\n", technique);

    if (!technique)
        return;

    if (technique->saved_state)
    {
        IDirect3DStateBlock9_Release(technique->saved_state);
        technique->saved_state = ((void*)0);
    }

    if (technique->annotations)
    {
        for (i = 0; i < technique->annotation_count; ++i)
            free_parameter(&technique->annotations[i], FALSE, FALSE);
        HeapFree(GetProcessHeap(), 0, technique->annotations);
        technique->annotations = ((void*)0);
    }

    if (technique->passes)
    {
        for (i = 0; i < technique->pass_count; ++i)
            free_pass(&technique->passes[i]);
        HeapFree(GetProcessHeap(), 0, technique->passes);
        technique->passes = ((void*)0);
    }

    HeapFree(GetProcessHeap(), 0, technique->name);
    technique->name = ((void*)0);
}
