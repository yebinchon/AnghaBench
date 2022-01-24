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
struct d3dx_technique {size_t pass_count; int /*<<< orphan*/ * passes; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/ * D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 struct d3dx_technique* FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static D3DXHANDLE FUNC4(struct d3dx9_base_effect *base,
        D3DXHANDLE technique, UINT index)
{
    struct d3dx_technique *tech = FUNC3(base, technique);

    if (tech && index < tech->pass_count)
    {
        FUNC0("Returning pass %p\n", &tech->passes[index]);
        return FUNC2(&tech->passes[index]);
    }

    FUNC1("Pass not found.\n");

    return NULL;
}