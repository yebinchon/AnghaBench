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
struct d3dx_sampler {int state_count; int /*<<< orphan*/ * states; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  size_t UINT ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 scalar_t__ FUNC6 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,char const*,char const**,struct d3dx_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int*) ; 

__attribute__((used)) static HRESULT FUNC9(struct d3dx9_base_effect *base, struct d3dx_sampler *sampler,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    HRESULT hr;
    UINT i;

    FUNC8(ptr, &sampler->state_count);
    FUNC4("Count: %u\n", sampler->state_count);

    sampler->states = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(*sampler->states) * sampler->state_count);
    if (!sampler->states)
    {
        FUNC0("Out of memory\n");
        return E_OUTOFMEMORY;
    }

    for (i = 0; i < sampler->state_count; ++i)
    {
        hr = FUNC6(base, &sampler->states[i], data, ptr, objects);
        if (hr != D3D_OK)
        {
            FUNC5("Failed to parse state %u\n", i);
            goto err_out;
        }
    }

    return D3D_OK;

err_out:

    for (i = 0; i < sampler->state_count; ++i)
    {
        FUNC7(&sampler->states[i]);
    }
    FUNC3(FUNC1(), 0, sampler->states);
    sampler->states = NULL;

    return hr;
}