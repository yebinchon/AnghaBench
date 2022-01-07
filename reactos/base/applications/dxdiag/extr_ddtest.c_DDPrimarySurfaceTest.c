
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_22__ {int dwCaps; } ;
struct TYPE_28__ {int dwSize; scalar_t__ dwBackBufferCount; TYPE_1__ ddsCaps; int dwFlags; } ;
struct TYPE_27__ {TYPE_3__* lpVtbl; } ;
struct TYPE_26__ {TYPE_2__* lpVtbl; } ;
struct TYPE_25__ {scalar_t__ message; scalar_t__ wParam; } ;
struct TYPE_24__ {scalar_t__ (* SetCooperativeLevel ) (TYPE_6__*,int ,int ) ;scalar_t__ (* CreateSurface ) (TYPE_6__*,TYPE_7__*,TYPE_5__**,int *) ;int (* Release ) (TYPE_6__*) ;} ;
struct TYPE_23__ {int (* Release ) (TYPE_5__*) ;} ;
typedef TYPE_4__ MSG ;
typedef TYPE_5__* LPDIRECTDRAWSURFACE ;
typedef TYPE_6__* LPDIRECTDRAW ;
typedef int HWND ;
typedef int DDSurfaceDesc ;
typedef TYPE_7__ DDSURFACEDESC ;
typedef scalar_t__ BOOL ;


 int DDRedrawFrame (TYPE_5__*) ;
 int DDSCAPS_3DDEVICE ;
 int DDSCAPS_PRIMARYSURFACE ;
 int DDSCL_NORMAL ;
 int DDSD_CAPS ;
 scalar_t__ DD_OK ;
 scalar_t__ DirectDrawCreate (int *,TYPE_6__**,int *) ;
 int DispatchMessage (TYPE_4__*) ;
 scalar_t__ FALSE ;
 int KillTimer (int ,scalar_t__) ;
 int PM_REMOVE ;
 scalar_t__ PeekMessage (TYPE_4__*,int *,int ,int ,int ) ;
 scalar_t__ SetTimer (int ,int,scalar_t__,int *) ;
 scalar_t__ TEST_DURATION ;
 scalar_t__ TRUE ;
 int TranslateMessage (TYPE_4__*) ;
 scalar_t__ WM_PAINT ;
 scalar_t__ WM_TIMER ;
 int ZeroMemory (TYPE_7__*,int) ;
 scalar_t__ stub1 (TYPE_6__*,int ,int ) ;
 int stub2 (TYPE_6__*) ;
 scalar_t__ stub3 (TYPE_6__*,TYPE_7__*,TYPE_5__**,int *) ;
 int stub4 (TYPE_6__*) ;
 int stub5 (TYPE_5__*) ;
 int stub6 (TYPE_6__*) ;

BOOL DDPrimarySurfaceTest(HWND hWnd){
    UINT TimerID;
    MSG msg;

    LPDIRECTDRAW lpDD = ((void*)0);
    LPDIRECTDRAWSURFACE lpDDSurface = ((void*)0);
    DDSURFACEDESC DDSurfaceDesc;

    if(DirectDrawCreate(((void*)0), &lpDD, ((void*)0)) != DD_OK)
        return FALSE;

    if(lpDD->lpVtbl->SetCooperativeLevel(lpDD, hWnd, DDSCL_NORMAL) != DD_OK)
    {
        lpDD->lpVtbl->Release(lpDD);
        return FALSE;
    }


    ZeroMemory(&DDSurfaceDesc, sizeof(DDSurfaceDesc));
    DDSurfaceDesc.dwSize = sizeof(DDSurfaceDesc);
    DDSurfaceDesc.dwFlags = DDSD_CAPS;
    DDSurfaceDesc.ddsCaps.dwCaps = DDSCAPS_PRIMARYSURFACE | DDSCAPS_3DDEVICE;
    DDSurfaceDesc.dwBackBufferCount = 0;

    if(lpDD->lpVtbl->CreateSurface(lpDD, &DDSurfaceDesc, &lpDDSurface, ((void*)0)) != DD_OK)
    {
        lpDD->lpVtbl->Release(lpDD);
        return FALSE;
    }

    TimerID = SetTimer(hWnd, -1, (UINT)TEST_DURATION, ((void*)0));

    while (TRUE)
    {
        if (PeekMessage(&msg, ((void*)0), 0, 0, PM_REMOVE))
        {
            if (msg.message == WM_TIMER && TimerID == msg.wParam)
                break;
            TranslateMessage(&msg);
            DispatchMessage(&msg);
            if (msg.message == WM_PAINT)
                DDRedrawFrame(lpDDSurface);
        }
    }
    KillTimer(hWnd, TimerID);
    lpDDSurface->lpVtbl->Release(lpDDSurface);
    lpDD->lpVtbl->Release(lpDD);

return TRUE;
}
