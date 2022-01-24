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
struct TYPE_3__ {int /*<<< orphan*/ * Moniker; int /*<<< orphan*/  SiteData; scalar_t__ Site; } ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  TYPE_1__ HlinkImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HLINKGETREF_ABSOLUTE ; 
 scalar_t__ HLINKGETREF_DEFAULT ; 
 scalar_t__ HLINKGETREF_RELATIVE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ MKSYS_NONE ; 
 int /*<<< orphan*/  OLEGETMONIKER_FORCEASSIGN ; 
 int /*<<< orphan*/  OLEWHICHMK_CONTAINER ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC6(HlinkImpl* This, IMoniker** moniker,
        DWORD ref_type)
{
    HRESULT hres;

    if (ref_type == HLINKGETREF_DEFAULT)
        ref_type = HLINKGETREF_RELATIVE;

    if (This->Moniker)
    {
        DWORD mktype = MKSYS_NONE;

        hres = FUNC4(This->Moniker, &mktype);
        if (hres == S_OK && mktype != MKSYS_NONE)
        {
            *moniker = This->Moniker;
            FUNC2(*moniker);
            return S_OK;
        }
    }

    if (ref_type == HLINKGETREF_ABSOLUTE && This->Site)
    {
        IMoniker *hls_moniker;

        hres = FUNC1(This->Site, This->SiteData,
                OLEGETMONIKER_FORCEASSIGN, OLEWHICHMK_CONTAINER, &hls_moniker);
        if (FUNC0(hres))
            return hres;

        if (This->Moniker)
        {
            hres = FUNC3(hls_moniker, This->Moniker, FALSE,
                    moniker);
            FUNC5(hls_moniker);
            return hres;
        }

        *moniker = hls_moniker;
        return S_OK;
    }

    *moniker = This->Moniker;
    if (*moniker)
        FUNC2(*moniker);

    return S_OK;
}