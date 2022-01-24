#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct d3dx_technique {int annotation_count; int pass_count; char* annotations; char* passes; char* name; } ;
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
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (struct d3dx9_base_effect*,char*,char const*,char const**,struct d3dx_object*) ; 
 scalar_t__ FUNC7 (struct d3dx9_base_effect*,char*,char const*,char const**,struct d3dx_object*) ; 
 scalar_t__ FUNC8 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC13(struct d3dx9_base_effect *base, struct d3dx_technique *technique,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    HRESULT hr;
    unsigned int i;
    char *name = NULL;

    FUNC12(ptr, &offset);
    FUNC4("Technique name offset: %#x\n", offset);
    hr = FUNC8(&name, data + offset);
    if (hr != D3D_OK)
    {
        FUNC5("Failed to parse name\n");
        goto err_out;
    }

    FUNC12(ptr, &technique->annotation_count);
    FUNC4("Annotation count: %u\n", technique->annotation_count);

    FUNC12(ptr, &technique->pass_count);
    FUNC4("Pass count: %u\n", technique->pass_count);

    if (technique->annotation_count)
    {
        technique->annotations = FUNC2(FUNC1(), HEAP_ZERO_MEMORY,
                sizeof(*technique->annotations) * technique->annotation_count);
        if (!technique->annotations)
        {
            FUNC0("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < technique->annotation_count; ++i)
        {
            FUNC11(&technique->annotations[i]);
            hr = FUNC6(base, &technique->annotations[i], data, ptr, objects);
            if (hr != D3D_OK)
            {
                FUNC5("Failed to parse annotation %u\n", i);
                goto err_out;
            }
        }
    }

    if (technique->pass_count)
    {
        technique->passes = FUNC2(FUNC1(), HEAP_ZERO_MEMORY,
                sizeof(*technique->passes) * technique->pass_count);
        if (!technique->passes)
        {
            FUNC0("Out of memory\n");
            hr = E_OUTOFMEMORY;
            goto err_out;
        }

        for (i = 0; i < technique->pass_count; ++i)
        {
            hr = FUNC7(base, &technique->passes[i], data, ptr, objects);
            if (hr != D3D_OK)
            {
                FUNC5("Failed to parse pass %u\n", i);
                goto err_out;
            }
        }
    }

    technique->name = name;

    return D3D_OK;

err_out:

    if (technique->passes)
    {
        for (i = 0; i < technique->pass_count; ++i)
            FUNC10(&technique->passes[i]);
        FUNC3(FUNC1(), 0, technique->passes);
        technique->passes = NULL;
    }

    if (technique->annotations)
    {
        for (i = 0; i < technique->annotation_count; ++i)
            FUNC9(&technique->annotations[i], FALSE, FALSE);
        FUNC3(FUNC1(), 0, technique->annotations);
        technique->annotations = NULL;
    }

    FUNC3(FUNC1(), 0, name);

    return hr;
}