#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
struct d3dx_top_level_parameter {int annotation_count; int /*<<< orphan*/ * annotations; TYPE_1__ param; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,char const*,char const**,struct d3dx_object*) ; 
 scalar_t__ FUNC7 (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const**,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (struct d3dx9_base_effect*,TYPE_1__*,char const*,char const*,struct d3dx_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC12(struct d3dx9_base_effect *base, struct d3dx_top_level_parameter *param,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    HRESULT hr;
    unsigned int i;
    const char *ptr2;

    FUNC11(ptr, &offset);
    FUNC4("Typedef offset: %#x.\n", offset);
    ptr2 = data + offset;

    FUNC11(ptr, &offset);
    FUNC4("Value offset: %#x.\n", offset);

    FUNC11(ptr, &param->param.flags);
    FUNC4("Flags: %#x.\n", param->param.flags);

    FUNC11(ptr, &param->annotation_count);
    FUNC4("Annotation count: %u.\n", param->annotation_count);

    hr = FUNC7(base, &param->param, data, &ptr2, NULL, param->param.flags);
    if (hr != D3D_OK)
    {
        FUNC5("Failed to parse type definition.\n");
        return hr;
    }

    hr = FUNC8(base, &param->param, data, data + offset, objects);
    if (hr != D3D_OK)
    {
        FUNC5("Failed to parse value.\n");
        return hr;
    }

    if (param->annotation_count)
    {
        param->annotations = FUNC2(FUNC1(), HEAP_ZERO_MEMORY,
                sizeof(*param->annotations) * param->annotation_count);
        if (!param->annotations)
        {
            FUNC0("Out of memory.\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < param->annotation_count; ++i)
        {
            FUNC10(&param->annotations[i]);
            hr = FUNC6(base, &param->annotations[i], data, ptr, objects);
            if (hr != D3D_OK)
            {
                FUNC5("Failed to parse annotation.\n");
                goto err_out;
            }
        }
    }

    return D3D_OK;

err_out:

    if (param->annotations)
    {
        for (i = 0; i < param->annotation_count; ++i)
            FUNC9(&param->annotations[i], FALSE, FALSE);
        FUNC3(FUNC1(), 0, param->annotations);
        param->annotations = NULL;
    }

    return hr;
}