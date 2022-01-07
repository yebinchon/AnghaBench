
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_sampler {int state_count; int * states; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef scalar_t__ HRESULT ;


 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,int) ;
 int WARN (char*,size_t) ;
 scalar_t__ d3dx9_parse_state (struct d3dx9_base_effect*,int *,char const*,char const**,struct d3dx_object*) ;
 int free_state (int *) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dx9_parse_sampler(struct d3dx9_base_effect *base, struct d3dx_sampler *sampler,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    HRESULT hr;
    UINT i;

    read_dword(ptr, &sampler->state_count);
    TRACE("Count: %u\n", sampler->state_count);

    sampler->states = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*sampler->states) * sampler->state_count);
    if (!sampler->states)
    {
        ERR("Out of memory\n");
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < sampler->state_count; ++i)
    {
        hr = d3dx9_parse_state(base, &sampler->states[i], data, ptr, objects);
        if (hr != D3D_OK)
        {
            WARN("Failed to parse state %u\n", i);
            goto err_out;
        }
    }

    return D3D_OK;

err_out:

    for (i = 0; i < sampler->state_count; ++i)
    {
        free_state(&sampler->states[i]);
    }
    HeapFree(GetProcessHeap(), 0, sampler->states);
    sampler->states = ((void*)0);

    return hr;
}
