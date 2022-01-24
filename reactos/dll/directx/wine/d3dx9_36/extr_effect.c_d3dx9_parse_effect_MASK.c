#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct d3dx9_base_effect {int parameter_count; int technique_count; int object_count; TYPE_1__* objects; TYPE_1__* parameters; TYPE_1__* techniques; int /*<<< orphan*/  version_counter; TYPE_5__* pool; int /*<<< orphan*/  param_tree; } ;
typedef  size_t UINT ;
struct TYPE_14__ {int /*<<< orphan*/  version_counter; } ;
struct TYPE_13__ {int /*<<< orphan*/  param; int /*<<< orphan*/ * version_counter; scalar_t__ data; } ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct d3dx9_base_effect*,int,char const**) ; 
 scalar_t__ FUNC9 (struct d3dx9_base_effect*,TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const**,TYPE_1__*) ; 
 scalar_t__ FUNC11 (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const**,TYPE_1__*) ; 
 scalar_t__ FUNC12 (struct d3dx9_base_effect*,char const*,char const**,char const**,unsigned int) ; 
 scalar_t__ FUNC13 (TYPE_5__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  param_rb_compare ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  param_set_top_level_param ; 
 int /*<<< orphan*/  FUNC18 (char const**,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const**,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC23(struct d3dx9_base_effect *base, const char *data, UINT data_size,
        DWORD start, const char **skip_constants, unsigned int skip_constants_count)
{
    const char *ptr = data + start;
    UINT stringcount, resourcecount;
    HRESULT hr;
    UINT i;

    FUNC18(&ptr, &base->parameter_count);
    FUNC5("Parameter count: %u.\n", base->parameter_count);

    FUNC18(&ptr, &base->technique_count);
    FUNC5("Technique count: %u.\n", base->technique_count);

    FUNC20(&ptr, 1);

    FUNC18(&ptr, &base->object_count);
    FUNC5("Object count: %u.\n", base->object_count);

    base->objects = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*base->objects) * base->object_count);
    if (!base->objects)
    {
        FUNC0("Out of memory.\n");
        hr = E_OUTOFMEMORY;
        goto err_out;
    }

    FUNC22(&base->param_tree, param_rb_compare);
    if (base->parameter_count)
    {
        base->parameters = FUNC3(FUNC2(), HEAP_ZERO_MEMORY,
                sizeof(*base->parameters) * base->parameter_count);
        if (!base->parameters)
        {
            FUNC0("Out of memory.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < base->parameter_count; ++i)
        {
            FUNC17(&base->parameters[i].param);
            hr = FUNC10(base, &base->parameters[i], data, &ptr, base->objects);
            if (hr != D3D_OK)
            {
                FUNC6("Failed to parse parameter %u.\n", i);
                goto err_out;
            }
            FUNC21(&base->parameters[i].param, param_set_top_level_param,
                &base->parameters[i]);
            FUNC7(base, &base->parameters[i].param, NULL, 0, 0);
        }
    }

    if (base->technique_count)
    {
        base->techniques = FUNC3(FUNC2(), HEAP_ZERO_MEMORY,
                sizeof(*base->techniques) * base->technique_count);
        if (!base->techniques)
        {
            FUNC0("Out of memory.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < base->technique_count; ++i)
        {
            FUNC5("Parsing technique %u.\n", i);
            hr = FUNC11(base, &base->techniques[i], data, &ptr, base->objects);
            if (hr != D3D_OK)
            {
                FUNC6("Failed to parse technique %u.\n", i);
                goto err_out;
            }
        }
    }

    FUNC18(&ptr, &stringcount);
    FUNC5("String count: %u.\n", stringcount);

    FUNC18(&ptr, &resourcecount);
    FUNC5("Resource count: %u.\n", resourcecount);

    for (i = 0; i < stringcount; ++i)
    {
        DWORD id;

        FUNC18(&ptr, &id);
        FUNC5("id: %u.\n", id);

        if (FUNC1(hr = FUNC8(base, id, &ptr)))
            goto err_out;

        if (base->objects[id].data)
        {
            if (FUNC1(hr = FUNC9(base, &base->objects[id])))
                goto err_out;
        }
    }

    for (i = 0; i < resourcecount; ++i)
    {
        FUNC5("parse resource %u.\n", i);

        hr = FUNC12(base, data, &ptr, skip_constants, skip_constants_count);
        if (hr != D3D_OK)
        {
            FUNC6("Failed to parse resource %u.\n", i);
            goto err_out;
        }
    }

    for (i = 0; i < base->parameter_count; ++i)
    {
        if (FUNC1(hr = FUNC13(base->pool, &base->parameters[i])))
            goto err_out;
        base->parameters[i].version_counter = base->pool
                ? &base->pool->version_counter
                : &base->version_counter;
        FUNC19(&base->parameters[i].param);
    }
    return D3D_OK;

err_out:

    if (base->techniques)
    {
        for (i = 0; i < base->technique_count; ++i)
            FUNC15(&base->techniques[i]);
        FUNC4(FUNC2(), 0, base->techniques);
        base->techniques = NULL;
    }

    if (base->parameters)
    {
        for (i = 0; i < base->parameter_count; ++i)
        {
            FUNC16(&base->parameters[i]);
        }
        FUNC4(FUNC2(), 0, base->parameters);
        base->parameters = NULL;
    }

    if (base->objects)
    {
        for (i = 0; i < base->object_count; ++i)
        {
            FUNC14(&base->objects[i]);
        }
        FUNC4(FUNC2(), 0, base->objects);
        base->objects = NULL;
    }

    return hr;
}