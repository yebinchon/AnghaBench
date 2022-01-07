
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_pass {unsigned int annotation_count; unsigned int state_count; int * name; int * states; int * annotations; } ;


 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,struct d3dx_pass*) ;
 int free_parameter (int *,int ,int ) ;
 int free_state (int *) ;

__attribute__((used)) static void free_pass(struct d3dx_pass *pass)
{
    unsigned int i;

    TRACE("Free pass %p\n", pass);

    if (!pass)
        return;

    if (pass->annotations)
    {
        for (i = 0; i < pass->annotation_count; ++i)
            free_parameter(&pass->annotations[i], FALSE, FALSE);
        HeapFree(GetProcessHeap(), 0, pass->annotations);
        pass->annotations = ((void*)0);
    }

    if (pass->states)
    {
        for (i = 0; i < pass->state_count; ++i)
            free_state(&pass->states[i]);
        HeapFree(GetProcessHeap(), 0, pass->states);
        pass->states = ((void*)0);
    }

    HeapFree(GetProcessHeap(), 0, pass->name);
    pass->name = ((void*)0);
}
