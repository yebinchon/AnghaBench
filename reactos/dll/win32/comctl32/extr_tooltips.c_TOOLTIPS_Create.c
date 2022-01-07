
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nMaxTipWidth; int nTool; int nCurrentTool; int nTrackTool; int hwndSelf; int bTrackActive; int bActive; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;


 TYPE_1__* Alloc (int) ;
 int FALSE ;
 int HWND_TOP ;
 int SWP_HIDEWINDOW ;
 int SWP_NOACTIVATE ;
 int SWP_NOZORDER ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TOOLTIPS_InitSystemSettings (TYPE_1__*) ;
 int TOOLTIPS_SetDelayTime (TYPE_1__*,int ,int ) ;
 int TRUE ;
 int TTDT_AUTOMATIC ;

__attribute__((used)) static LRESULT
TOOLTIPS_Create (HWND hwnd)
{
    TOOLTIPS_INFO *infoPtr;


    infoPtr = Alloc (sizeof(TOOLTIPS_INFO));
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->bActive = TRUE;
    infoPtr->bTrackActive = FALSE;

    infoPtr->nMaxTipWidth = -1;
    infoPtr->nTool = -1;
    infoPtr->nCurrentTool = -1;
    infoPtr->nTrackTool = -1;
    infoPtr->hwndSelf = hwnd;


    TOOLTIPS_InitSystemSettings(infoPtr);

    TOOLTIPS_SetDelayTime(infoPtr, TTDT_AUTOMATIC, 0);

    SetWindowPos (hwnd, HWND_TOP, 0, 0, 0, 0, SWP_NOZORDER | SWP_HIDEWINDOW | SWP_NOACTIVATE);

    return 0;
}
