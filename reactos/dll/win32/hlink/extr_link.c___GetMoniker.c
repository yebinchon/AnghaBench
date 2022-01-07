
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Moniker; int SiteData; scalar_t__ Site; } ;
typedef int IMoniker ;
typedef TYPE_1__ HlinkImpl ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 scalar_t__ HLINKGETREF_ABSOLUTE ;
 scalar_t__ HLINKGETREF_DEFAULT ;
 scalar_t__ HLINKGETREF_RELATIVE ;
 int IHlinkSite_GetMoniker (scalar_t__,int ,int ,int ,int **) ;
 int IMoniker_AddRef (int *) ;
 int IMoniker_ComposeWith (int *,int *,int ,int **) ;
 int IMoniker_IsSystemMoniker (int *,scalar_t__*) ;
 int IMoniker_Release (int *) ;
 scalar_t__ MKSYS_NONE ;
 int OLEGETMONIKER_FORCEASSIGN ;
 int OLEWHICHMK_CONTAINER ;
 int S_OK ;

__attribute__((used)) static HRESULT __GetMoniker(HlinkImpl* This, IMoniker** moniker,
        DWORD ref_type)
{
    HRESULT hres;

    if (ref_type == HLINKGETREF_DEFAULT)
        ref_type = HLINKGETREF_RELATIVE;

    if (This->Moniker)
    {
        DWORD mktype = MKSYS_NONE;

        hres = IMoniker_IsSystemMoniker(This->Moniker, &mktype);
        if (hres == S_OK && mktype != MKSYS_NONE)
        {
            *moniker = This->Moniker;
            IMoniker_AddRef(*moniker);
            return S_OK;
        }
    }

    if (ref_type == HLINKGETREF_ABSOLUTE && This->Site)
    {
        IMoniker *hls_moniker;

        hres = IHlinkSite_GetMoniker(This->Site, This->SiteData,
                OLEGETMONIKER_FORCEASSIGN, OLEWHICHMK_CONTAINER, &hls_moniker);
        if (FAILED(hres))
            return hres;

        if (This->Moniker)
        {
            hres = IMoniker_ComposeWith(hls_moniker, This->Moniker, FALSE,
                    moniker);
            IMoniker_Release(hls_moniker);
            return hres;
        }

        *moniker = hls_moniker;
        return S_OK;
    }

    *moniker = This->Moniker;
    if (*moniker)
        IMoniker_AddRef(*moniker);

    return S_OK;
}
