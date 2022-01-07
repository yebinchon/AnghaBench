
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int style; int hwndParent; } ;
struct TYPE_5__ {int dwStyle; int nButtonSize; int direction; int hwndSelf; void* BRbtnState; void* TLbtnState; void* bCapture; void* bForward; scalar_t__ nHeight; scalar_t__ nWidth; scalar_t__ nPos; scalar_t__ nBorder; int clrBk; int hwndNotify; int * hwndChild; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;
typedef TYPE_2__ CREATESTRUCTW ;


 int COLOR_BTNFACE ;
 void* FALSE ;
 int FIXME (char*,int ) ;
 int GetSysColor (int ) ;
 void* PGF_INVISIBLE ;
 int PGS_DRAGNDROP ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 TYPE_1__* heap_alloc_zero (int) ;

__attribute__((used)) static LRESULT
PAGER_Create (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    PAGER_INFO *infoPtr;


    infoPtr = heap_alloc_zero (sizeof(*infoPtr));
    if (!infoPtr) return -1;
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->hwndSelf = hwnd;
    infoPtr->hwndChild = ((void*)0);
    infoPtr->hwndNotify = lpcs->hwndParent;
    infoPtr->dwStyle = lpcs->style;
    infoPtr->clrBk = GetSysColor(COLOR_BTNFACE);
    infoPtr->nBorder = 0;
    infoPtr->nButtonSize = 12;
    infoPtr->nPos = 0;
    infoPtr->nWidth = 0;
    infoPtr->nHeight = 0;
    infoPtr->bForward = FALSE;
    infoPtr->bCapture = FALSE;
    infoPtr->TLbtnState = PGF_INVISIBLE;
    infoPtr->BRbtnState = PGF_INVISIBLE;
    infoPtr->direction = -1;

    if (infoPtr->dwStyle & PGS_DRAGNDROP)
        FIXME("[%p] Drag and Drop style is not implemented yet.\n", infoPtr->hwndSelf);

    return 0;
}
