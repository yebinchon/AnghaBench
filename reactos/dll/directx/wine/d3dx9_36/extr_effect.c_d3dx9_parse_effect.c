
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct d3dx9_base_effect {int parameter_count; int technique_count; int object_count; TYPE_1__* objects; TYPE_1__* parameters; TYPE_1__* techniques; int version_counter; TYPE_5__* pool; int param_tree; } ;
typedef size_t UINT ;
struct TYPE_14__ {int version_counter; } ;
struct TYPE_13__ {int param; int * version_counter; scalar_t__ data; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ D3D_OK ;
 int ERR (char*) ;
 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int TRACE (char*,size_t) ;
 int WARN (char*,size_t) ;
 int add_param_to_tree (struct d3dx9_base_effect*,int *,int *,int ,int ) ;
 scalar_t__ d3dx9_copy_data (struct d3dx9_base_effect*,int,char const**) ;
 scalar_t__ d3dx9_create_object (struct d3dx9_base_effect*,TYPE_1__*) ;
 scalar_t__ d3dx9_parse_effect_parameter (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const**,TYPE_1__*) ;
 scalar_t__ d3dx9_parse_effect_technique (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const**,TYPE_1__*) ;
 scalar_t__ d3dx9_parse_resource (struct d3dx9_base_effect*,char const*,char const**,char const**,unsigned int) ;
 scalar_t__ d3dx_pool_sync_shared_parameter (TYPE_5__*,TYPE_1__*) ;
 int free_object (TYPE_1__*) ;
 int free_technique (TYPE_1__*) ;
 int free_top_level_parameter (TYPE_1__*) ;
 int param_rb_compare ;
 int param_set_magic_number (int *) ;
 int param_set_top_level_param ;
 int read_dword (char const**,...) ;
 int set_dirty (int *) ;
 int skip_dword_unknown (char const**,int) ;
 int walk_parameter_tree (int *,int ,TYPE_1__*) ;
 int wine_rb_init (int *,int ) ;

__attribute__((used)) static HRESULT d3dx9_parse_effect(struct d3dx9_base_effect *base, const char *data, UINT data_size,
        DWORD start, const char **skip_constants, unsigned int skip_constants_count)
{
    const char *ptr = data + start;
    UINT stringcount, resourcecount;
    HRESULT hr;
    UINT i;

    read_dword(&ptr, &base->parameter_count);
    TRACE("Parameter count: %u.\n", base->parameter_count);

    read_dword(&ptr, &base->technique_count);
    TRACE("Technique count: %u.\n", base->technique_count);

    skip_dword_unknown(&ptr, 1);

    read_dword(&ptr, &base->object_count);
    TRACE("Object count: %u.\n", base->object_count);

    base->objects = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*base->objects) * base->object_count);
    if (!base->objects)
    {
        ERR("Out of memory.\n");
        hr = E_OUTOFMEMORY;
        goto err_out;
    }

    wine_rb_init(&base->param_tree, param_rb_compare);
    if (base->parameter_count)
    {
        base->parameters = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                sizeof(*base->parameters) * base->parameter_count);
        if (!base->parameters)
        {
            ERR("Out of memory.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < base->parameter_count; ++i)
        {
            param_set_magic_number(&base->parameters[i].param);
            hr = d3dx9_parse_effect_parameter(base, &base->parameters[i], data, &ptr, base->objects);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse parameter %u.\n", i);
                goto err_out;
            }
            walk_parameter_tree(&base->parameters[i].param, param_set_top_level_param,
                &base->parameters[i]);
            add_param_to_tree(base, &base->parameters[i].param, ((void*)0), 0, 0);
        }
    }

    if (base->technique_count)
    {
        base->techniques = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                sizeof(*base->techniques) * base->technique_count);
        if (!base->techniques)
        {
            ERR("Out of memory.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < base->technique_count; ++i)
        {
            TRACE("Parsing technique %u.\n", i);
            hr = d3dx9_parse_effect_technique(base, &base->techniques[i], data, &ptr, base->objects);
            if (hr != D3D_OK)
            {
                WARN("Failed to parse technique %u.\n", i);
                goto err_out;
            }
        }
    }

    read_dword(&ptr, &stringcount);
    TRACE("String count: %u.\n", stringcount);

    read_dword(&ptr, &resourcecount);
    TRACE("Resource count: %u.\n", resourcecount);

    for (i = 0; i < stringcount; ++i)
    {
        DWORD id;

        read_dword(&ptr, &id);
        TRACE("id: %u.\n", id);

        if (FAILED(hr = d3dx9_copy_data(base, id, &ptr)))
            goto err_out;

        if (base->objects[id].data)
        {
            if (FAILED(hr = d3dx9_create_object(base, &base->objects[id])))
                goto err_out;
        }
    }

    for (i = 0; i < resourcecount; ++i)
    {
        TRACE("parse resource %u.\n", i);

        hr = d3dx9_parse_resource(base, data, &ptr, skip_constants, skip_constants_count);
        if (hr != D3D_OK)
        {
            WARN("Failed to parse resource %u.\n", i);
            goto err_out;
        }
    }

    for (i = 0; i < base->parameter_count; ++i)
    {
        if (FAILED(hr = d3dx_pool_sync_shared_parameter(base->pool, &base->parameters[i])))
            goto err_out;
        base->parameters[i].version_counter = base->pool
                ? &base->pool->version_counter
                : &base->version_counter;
        set_dirty(&base->parameters[i].param);
    }
    return D3D_OK;

err_out:

    if (base->techniques)
    {
        for (i = 0; i < base->technique_count; ++i)
            free_technique(&base->techniques[i]);
        HeapFree(GetProcessHeap(), 0, base->techniques);
        base->techniques = ((void*)0);
    }

    if (base->parameters)
    {
        for (i = 0; i < base->parameter_count; ++i)
        {
            free_top_level_parameter(&base->parameters[i]);
        }
        HeapFree(GetProcessHeap(), 0, base->parameters);
        base->parameters = ((void*)0);
    }

    if (base->objects)
    {
        for (i = 0; i < base->object_count; ++i)
        {
            free_object(&base->objects[i]);
        }
        HeapFree(GetProcessHeap(), 0, base->objects);
        base->objects = ((void*)0);
    }

    return hr;
}
