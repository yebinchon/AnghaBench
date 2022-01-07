
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_9__ {int style; int hwndParent; } ;
struct TYPE_8__ {int iHotItem; int iHotDivider; int iMargin; int filter_change_timeout; scalar_t__ nHeight; int hwndNotify; int nNotifyFormat; scalar_t__ himl; scalar_t__ iMoveItem; int dwStyle; void* bTracking; void* bPressed; void* hcurDivopen; void* hcurDivider; void* hcurArrow; void* bRectsValid; scalar_t__ order; scalar_t__ items; scalar_t__ hFont; scalar_t__ uNumItem; scalar_t__ hwndSelf; } ;
struct TYPE_7__ {scalar_t__ tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef scalar_t__ HWND ;
typedef int HFONT ;
typedef TYPE_2__ HEADER_INFO ;
typedef int HDC ;
typedef int DWORD_PTR ;
typedef TYPE_3__ CREATESTRUCTW ;


 int COMCTL32_hModule ;
 void* FALSE ;
 int GetDC (int ) ;
 int GetStockObject (int ) ;
 int GetSystemMetrics (int ) ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 scalar_t__ IDC_ARROW ;
 int IDC_DIVIDER ;
 int IDC_DIVIDEROPEN ;
 void* LoadCursorW (int ,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int NF_QUERY ;
 int OpenThemeData (scalar_t__,int ) ;
 int ReleaseDC (int ,int ) ;
 int SM_CXEDGE ;
 int SYSTEM_FONT ;
 int SelectObject (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowLongPtrW (scalar_t__,int ,int ) ;
 scalar_t__ VERT_BORDER ;
 int WM_NOTIFYFORMAT ;
 TYPE_2__* heap_alloc_zero (int) ;
 int themeClass ;

__attribute__((used)) static LRESULT
HEADER_Create (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    HEADER_INFO *infoPtr;
    TEXTMETRICW tm;
    HFONT hOldFont;
    HDC hdc;

    infoPtr = heap_alloc_zero (sizeof(*infoPtr));
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);

    infoPtr->hwndSelf = hwnd;
    infoPtr->hwndNotify = lpcs->hwndParent;
    infoPtr->uNumItem = 0;
    infoPtr->hFont = 0;
    infoPtr->items = 0;
    infoPtr->order = 0;
    infoPtr->bRectsValid = FALSE;
    infoPtr->hcurArrow = LoadCursorW (0, (LPWSTR)IDC_ARROW);
    infoPtr->hcurDivider = LoadCursorW (COMCTL32_hModule, MAKEINTRESOURCEW(IDC_DIVIDER));
    infoPtr->hcurDivopen = LoadCursorW (COMCTL32_hModule, MAKEINTRESOURCEW(IDC_DIVIDEROPEN));
    infoPtr->bPressed = FALSE;
    infoPtr->bTracking = FALSE;
    infoPtr->dwStyle = lpcs->style;
    infoPtr->iMoveItem = 0;
    infoPtr->himl = 0;
    infoPtr->iHotItem = -1;
    infoPtr->iHotDivider = -1;
    infoPtr->iMargin = 3*GetSystemMetrics(SM_CXEDGE);
    infoPtr->nNotifyFormat =
 SendMessageW (infoPtr->hwndNotify, WM_NOTIFYFORMAT, (WPARAM)hwnd, NF_QUERY);
    infoPtr->filter_change_timeout = 1000;

    hdc = GetDC (0);
    hOldFont = SelectObject (hdc, GetStockObject (SYSTEM_FONT));
    GetTextMetricsW (hdc, &tm);
    infoPtr->nHeight = tm.tmHeight + VERT_BORDER;
    SelectObject (hdc, hOldFont);
    ReleaseDC (0, hdc);

    OpenThemeData(hwnd, themeClass);

    return 0;
}
