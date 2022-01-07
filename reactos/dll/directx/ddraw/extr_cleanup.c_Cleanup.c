
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int * lpModeInfo; int * lpdwFourCC; int * lpDDCBtmp; } ;
struct TYPE_5__ {int * lpLcl; } ;
typedef TYPE_1__* LPDDRAWI_DIRECTDRAW_INT ;


 int DX_WINDBG_trace () ;
 int DdDeleteDirectDrawObject (TYPE_2__*) ;
 int DxHeapMemFree (int *) ;
 TYPE_2__ ddgbl ;

VOID
Cleanup(LPDDRAWI_DIRECTDRAW_INT This)
{
    DX_WINDBG_trace();

    if (ddgbl.lpDDCBtmp != ((void*)0))
    {
        DxHeapMemFree(ddgbl.lpDDCBtmp);
    }

    if (ddgbl.lpdwFourCC != ((void*)0))
    {
        DxHeapMemFree(ddgbl.lpdwFourCC);
    }

    if (ddgbl.lpModeInfo != ((void*)0))
    {
        DxHeapMemFree(ddgbl.lpModeInfo);
    }

    DdDeleteDirectDrawObject(&ddgbl);
    if (This->lpLcl != ((void*)0))
    {
        DxHeapMemFree(This->lpLcl);
    }





}
