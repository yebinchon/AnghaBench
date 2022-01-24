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
struct ctab_constant {int /*<<< orphan*/  constantinfo_reserved; int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  ID3DXConstantTable ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  D3DXHANDLE ;
typedef  int /*<<< orphan*/  D3DXCONSTANT_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  D3DERR_INVALIDCALL ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ctab_constant* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC2(ID3DXConstantTable *ctab, D3DXHANDLE hc, D3DXCONSTANT_DESC *desc,
        WORD *constantinfo_reserved)
{
    const struct ctab_constant *constant = FUNC1(ctab, hc);

    if (!constant)
    {
        FUNC0("Could not get constant desc.\n");
        if (constantinfo_reserved)
            *constantinfo_reserved = 0;
        return D3DERR_INVALIDCALL;
    }
    *desc = constant->desc;
    if (constantinfo_reserved)
        *constantinfo_reserved = constant->constantinfo_reserved;
    return D3D_OK;
}