
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {int NumDisplayAdapter; int NumSoundAdapter; scalar_t__* hSoundWnd; scalar_t__* hDisplayWnd; scalar_t__* hDialogs; } ;
typedef TYPE_1__* PDXDIAG_CONTEXT ;
typedef int HWND ;


 int DestroyWindow (scalar_t__) ;

VOID
DestroyTabCtrlDialogs(PDXDIAG_CONTEXT pContext)
{
    UINT Index;


    for(Index = 0; Index < sizeof(pContext->hDialogs) / sizeof(HWND); Index++)
    {
       if (pContext->hDialogs[Index])
           DestroyWindow(pContext->hDialogs[Index]);
    }


    for(Index = 0; Index < pContext->NumDisplayAdapter; Index++)
    {
       if (pContext->hDisplayWnd[Index])
           DestroyWindow(pContext->hDisplayWnd[Index]);
    }


    for(Index = 0; Index < pContext->NumSoundAdapter; Index++)
    {
       if (pContext->hSoundWnd[Index])
           DestroyWindow(pContext->hSoundWnd[Index]);
    }

}
