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
struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct d3dx_parameter* FUNC1 (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct d3dx_parameter*) ; 
 struct d3dx_parameter* FUNC3 (struct d3dx9_base_effect*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static D3DXHANDLE FUNC4(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, const char *name)
{
    struct d3dx_parameter *param = FUNC3(base, parameter);
    D3DXHANDLE handle;

    if (!name)
    {
        handle = FUNC2(param);
        FUNC0("Returning parameter %p.\n", handle);
        return handle;
    }

    handle = FUNC2(FUNC1(base, param, name));
    FUNC0("Returning parameter %p.\n", handle);

    return handle;
}