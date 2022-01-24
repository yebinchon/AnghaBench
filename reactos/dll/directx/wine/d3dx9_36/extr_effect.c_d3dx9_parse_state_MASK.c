#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct d3dx_state {int operation; int index; int /*<<< orphan*/  parameter; int /*<<< orphan*/  type; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ D3D_OK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ST_CONSTANT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ *,char const*,char const*,struct d3dx_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int*) ; 
 TYPE_1__* state_table ; 

__attribute__((used)) static HRESULT FUNC6(struct d3dx9_base_effect *base, struct d3dx_state *state,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    const char *ptr2;
    HRESULT hr;

    state->type = ST_CONSTANT;

    FUNC5(ptr, &state->operation);
    FUNC0("Operation: %#x (%s)\n", state->operation, state_table[state->operation].name);

    FUNC5(ptr, &state->index);
    FUNC0("Index: %#x\n", state->index);

    FUNC5(ptr, &offset);
    FUNC0("Typedef offset: %#x\n", offset);
    ptr2 = data + offset;
    hr = FUNC2(base, &state->parameter, data, &ptr2, NULL, 0);
    if (hr != D3D_OK)
    {
        FUNC1("Failed to parse type definition\n");
        goto err_out;
    }

    FUNC5(ptr, &offset);
    FUNC0("Value offset: %#x\n", offset);
    hr = FUNC3(base, &state->parameter, data, data + offset, objects);
    if (hr != D3D_OK)
    {
        FUNC1("Failed to parse value\n");
        goto err_out;
    }

    return D3D_OK;

err_out:

    FUNC4(&state->parameter, FALSE, FALSE);

    return hr;
}