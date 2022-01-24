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
struct d3dx9_base_effect {int /*<<< orphan*/  technique_count; int /*<<< orphan*/  parameter_count; } ;
struct TYPE_3__ {int /*<<< orphan*/  Techniques; int /*<<< orphan*/  Parameters; scalar_t__ Functions; int /*<<< orphan*/ * Creator; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DXEFFECT_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static HRESULT FUNC2(struct d3dx9_base_effect *base, D3DXEFFECT_DESC *desc)
{
    if (!desc)
    {
        FUNC1("Invalid argument specified.\n");
        return D3DERR_INVALIDCALL;
    }

    FUNC0("partial stub!\n");

    /* TODO: add creator and function count. */
    desc->Creator = NULL;
    desc->Functions = 0;
    desc->Parameters = base->parameter_count;
    desc->Techniques = base->technique_count;

    return D3D_OK;
}