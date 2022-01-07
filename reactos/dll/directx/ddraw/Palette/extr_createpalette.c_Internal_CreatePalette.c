
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_22__ {scalar_t__ dwReserved1; struct TYPE_22__* lpLcl; struct TYPE_22__* lpLink; scalar_t__ dwProcessId; scalar_t__ lpVtbl; int dwFlags; TYPE_5__* lpDD_lcl; struct TYPE_22__* lpGbl; } ;
struct TYPE_21__ {TYPE_5__* lpLcl; } ;
struct TYPE_20__ {int dwLocalFlags; scalar_t__ dwProcessId; TYPE_4__* lpGbl; } ;
struct TYPE_19__ {TYPE_7__* palList; TYPE_3__* lpDDCBtmp; } ;
struct TYPE_17__ {scalar_t__ (* CreatePalette ) (TYPE_10__*) ;} ;
struct TYPE_16__ {int dwFlags; scalar_t__ (* CreatePalette ) (TYPE_10__*) ;} ;
struct TYPE_18__ {TYPE_2__ HELDD; TYPE_1__ HALDD; } ;
struct TYPE_15__ {scalar_t__ (* CreatePalette ) (TYPE_10__*) ;scalar_t__ ddRVal; int lpColorTable; TYPE_7__* lpDDPalette; TYPE_4__* lpDD; int member_0; } ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ LPUNKNOWN ;
typedef int LPPALETTEENTRY ;
typedef scalar_t__ LPDIRECTDRAWPALETTE ;
typedef TYPE_6__* LPDDRAWI_DIRECTDRAW_INT ;
typedef TYPE_7__* LPDDRAWI_DDRAWPALETTE_LCL ;
typedef TYPE_7__* LPDDRAWI_DDRAWPALETTE_INT ;
typedef TYPE_7__* LPDDRAWI_DDRAWPALETTE_GBL ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int DDRAWI_DDRAWPALETTE_LCL ;
typedef int DDRAWI_DDRAWPALETTE_INT ;
typedef int DDRAWI_DDRAWPALETTE_GBL ;
typedef TYPE_10__ DDHAL_CREATEPALETTEDATA ;


 scalar_t__ CLASS_E_NOAGGREGATION ;
 int ConvertPCapsFlags (int ) ;
 scalar_t__ DDERR_GENERIC ;
 scalar_t__ DDERR_INVALIDOBJECT ;
 scalar_t__ DDERR_NOCOOPERATIVELEVELSET ;
 scalar_t__ DDERR_NOTINITIALIZED ;
 scalar_t__ DDERR_OUTOFMEMORY ;
 int DDHAL_CB32_CREATEPALETTE ;
 scalar_t__ DDHAL_DRIVER_NOTHANDLED ;
 int DDRAWILCL_SETCOOPCALLED ;
 scalar_t__ DD_OK ;
 int DX_STUB_str (char*) ;
 int DirectDrawPalette_Vtable ;
 int DxHeapMemAlloc (TYPE_7__*,int) ;
 int DxHeapMemFree (TYPE_7__*) ;
 scalar_t__ GetCurrentProcessId () ;
 int IDirectDrawPalette_AddRef (scalar_t__) ;
 scalar_t__ stub1 (TYPE_10__*) ;

HRESULT
Internal_CreatePalette( LPDDRAWI_DIRECTDRAW_INT pDDraw, DWORD dwFlags,
                  LPPALETTEENTRY palent, LPDIRECTDRAWPALETTE* ppPalette, LPUNKNOWN pUnkOuter)
{
    DDHAL_CREATEPALETTEDATA mDdCreatePalette = { 0 };

    LPDDRAWI_DDRAWPALETTE_INT ThisPalInt = ((void*)0);
    LPDDRAWI_DDRAWPALETTE_LCL ThisPalLcl = ((void*)0);
    LPDDRAWI_DDRAWPALETTE_GBL ThisPalGbl = ((void*)0);

    HRESULT ret;

    if(pUnkOuter)
    {
        return CLASS_E_NOAGGREGATION;
    }

    if(!(pDDraw->lpLcl->dwLocalFlags & DDRAWILCL_SETCOOPCALLED))
    {
        return DDERR_NOCOOPERATIVELEVELSET;
    }


    if (pDDraw->lpLcl->dwProcessId != GetCurrentProcessId() )
    {
        return DDERR_INVALIDOBJECT;
    }


    DxHeapMemAlloc(ThisPalInt, sizeof( DDRAWI_DDRAWPALETTE_INT ) );
    if( ThisPalInt == ((void*)0) )
    {
        ret = DDERR_OUTOFMEMORY;
        goto cleanup;
    }

    DxHeapMemAlloc(ThisPalLcl, sizeof( DDRAWI_DDRAWPALETTE_LCL ) );
    if( ThisPalLcl == ((void*)0) )
    {
        ret = DDERR_OUTOFMEMORY;
        goto cleanup;
    }

    DxHeapMemAlloc(ThisPalGbl, sizeof( DDRAWI_DDRAWPALETTE_GBL ) );
    if( ThisPalGbl == ((void*)0) )
    {
        ret = DDERR_OUTOFMEMORY;
        goto cleanup;
    }



    ThisPalInt->lpLcl = ThisPalLcl;
    ThisPalLcl->lpGbl = ThisPalGbl;

    ThisPalLcl->lpDD_lcl = ThisPalGbl->lpDD_lcl = pDDraw->lpLcl;
    ThisPalGbl->dwFlags = ConvertPCapsFlags(dwFlags);

    ThisPalInt->lpVtbl = (PVOID)&DirectDrawPalette_Vtable;
    ThisPalGbl->dwProcessId = GetCurrentProcessId();

    mDdCreatePalette.lpDD = pDDraw->lpLcl->lpGbl;
    mDdCreatePalette.lpDDPalette = ThisPalGbl;
    if(pDDraw->lpLcl->lpGbl->lpDDCBtmp->HALDD.dwFlags & DDHAL_CB32_CREATEPALETTE) {
        mDdCreatePalette.CreatePalette = pDDraw->lpLcl->lpGbl->lpDDCBtmp->HALDD.CreatePalette;
        DX_STUB_str("Using HAL CreatePalette\n");
    }
    else {
        mDdCreatePalette.CreatePalette = pDDraw->lpLcl->lpGbl->lpDDCBtmp->HELDD.CreatePalette;
        DX_STUB_str("Using HEL CreatePalette\n");
    }
    mDdCreatePalette.ddRVal = DDERR_GENERIC;
    mDdCreatePalette.lpColorTable = palent;

    if (mDdCreatePalette.CreatePalette(&mDdCreatePalette) == DDHAL_DRIVER_NOTHANDLED)
    {
        DX_STUB_str("mDdCreateSurface failed with DDHAL_DRIVER_NOTHANDLED.");
        ret = DDERR_NOTINITIALIZED;
        goto cleanup;
    }

    if (mDdCreatePalette.ddRVal != DD_OK)
    {
        DX_STUB_str("mDdCreateSurface failed.");
        ret = mDdCreatePalette.ddRVal;
        goto cleanup;
    }

    *ppPalette = (LPDIRECTDRAWPALETTE)ThisPalInt;
    ThisPalInt->lpLink = pDDraw->lpLcl->lpGbl->palList;
    pDDraw->lpLcl->lpGbl->palList = ThisPalInt;
    ThisPalInt->lpLcl->dwReserved1 = (ULONG_PTR)pDDraw;
    IDirectDrawPalette_AddRef(*ppPalette);

    return DD_OK;

cleanup:
    if(ThisPalInt) DxHeapMemFree(ThisPalInt);
    if(ThisPalLcl) DxHeapMemFree(ThisPalLcl);
    if(ThisPalGbl) DxHeapMemFree(ThisPalGbl);

    return ret;
}
