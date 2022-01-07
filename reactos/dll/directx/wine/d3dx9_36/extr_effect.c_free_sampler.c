
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_sampler {size_t state_count; int * states; } ;
typedef size_t UINT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int free_state (int *) ;

__attribute__((used)) static void free_sampler(struct d3dx_sampler *sampler)
{
    UINT i;

    for (i = 0; i < sampler->state_count; ++i)
    {
        free_state(&sampler->states[i]);
    }
    HeapFree(GetProcessHeap(), 0, sampler->states);
}
