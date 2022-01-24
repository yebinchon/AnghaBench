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
struct d3dx_technique {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/ * D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct d3dx_technique* FUNC2 (struct d3dx9_base_effect*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (struct d3dx_technique*) ; 

__attribute__((used)) static D3DXHANDLE FUNC4(struct d3dx9_base_effect *base, const char *name)
{
    struct d3dx_technique *tech = FUNC2(base, name);

    if (tech)
    {
        D3DXHANDLE t = FUNC3(tech);
        FUNC0("Returning technique %p\n", t);
        return t;
    }

    FUNC1("Technique not found.\n");

    return NULL;
}