
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int nclm ;
typedef int WCHAR ;
struct TYPE_20__ {int hwndParent; scalar_t__ lpszName; } ;
struct TYPE_16__ {scalar_t__ idFrom; int code; void* hwndFrom; } ;
struct TYPE_19__ {TYPE_3__ hdr; scalar_t__ hwndToolTips; } ;
struct TYPE_18__ {int cbSize; int lfStatusFont; } ;
struct TYPE_14__ {scalar_t__ hIcon; scalar_t__ style; scalar_t__ x; scalar_t__ text; void* bound; } ;
struct TYPE_17__ {int numParts; int minHeight; scalar_t__ hwndToolTip; int height; TYPE_2__* parts; TYPE_1__ part0; int hDefaultFont; int Notify; int horizontalGap; int verticalBorder; int horizontalBorder; scalar_t__ hFont; int clrBk; int simple; void* Self; } ;
struct TYPE_15__ {int x; void* text; scalar_t__ hIcon; scalar_t__ style; void* bound; } ;
typedef TYPE_4__ STATUS_INFO ;
typedef int STATUSWINDOWPART ;
typedef void* RECT ;
typedef TYPE_5__ NONCLIENTMETRICSW ;
typedef TYPE_6__ NMTOOLTIPSCREATED ;
typedef int LRESULT ;
typedef int LPCWSTR ;
typedef int LPARAM ;
typedef void* HWND ;
typedef int HINSTANCE ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef TYPE_7__ CREATESTRUCTA ;


 void* Alloc (int) ;
 int CLR_DEFAULT ;
 int CW_USEDEFAULT ;
 int CreateFontIndirectW (int *) ;
 scalar_t__ CreateWindowExW (int ,int ,int *,int,int ,int ,int ,int ,void*,int ,int ,int *) ;
 int FALSE ;
 int GWLP_HINSTANCE ;
 int GWLP_ID ;
 int GWL_STYLE ;
 int GetClientRect (void*,void**) ;
 int GetSystemMetrics (int ) ;
 scalar_t__ GetWindowLongPtrW (void*,int ) ;
 int GetWindowLongW (void*,int ) ;
 int HORZ_BORDER ;
 int HORZ_GAP ;
 int NF_REQUERY ;
 int NM_TOOLTIPSCREATED ;
 int OpenThemeData (void*,int ) ;
 int SBT_TOOLTIPS ;
 int SM_CYSIZE ;
 int SPI_GETNONCLIENTMETRICS ;
 int STATUSBAR_ComputeHeight (TYPE_4__*) ;
 int STATUSBAR_NotifyFormat (TYPE_4__*,int ,int ) ;
 int STATUSBAR_WMDestroy (TYPE_4__*) ;
 int SendMessageW (int ,int ,scalar_t__,int ) ;
 int SetWindowLongPtrW (void*,int ,int ) ;
 int SetWindowLongW (void*,int ,int) ;
 int SystemParametersInfoW (int ,int,TYPE_5__*,int ) ;
 int TOOLTIPS_CLASSW ;
 int TRACE (char*) ;
 int TTS_ALWAYSTIP ;
 int VERT_BORDER ;
 int WM_NOTIFY ;
 int WS_BORDER ;
 int WS_POPUP ;
 int ZeroMemory (TYPE_5__*,int) ;
 int strcpyW (void*,int ) ;
 int strlenW (int ) ;
 int themeClass ;

__attribute__((used)) static LRESULT
STATUSBAR_WMCreate (HWND hwnd, const CREATESTRUCTA *lpCreate)
{
    STATUS_INFO *infoPtr;
    NONCLIENTMETRICSW nclm;
    DWORD dwStyle;
    RECT rect;
    int len;

    TRACE("\n");
    infoPtr = Alloc (sizeof(STATUS_INFO));
    if (!infoPtr) goto create_fail;
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);

    infoPtr->Self = hwnd;
    infoPtr->Notify = lpCreate->hwndParent;
    infoPtr->numParts = 1;
    infoPtr->parts = 0;
    infoPtr->simple = FALSE;
    infoPtr->clrBk = CLR_DEFAULT;
    infoPtr->hFont = 0;
    infoPtr->horizontalBorder = HORZ_BORDER;
    infoPtr->verticalBorder = VERT_BORDER;
    infoPtr->horizontalGap = HORZ_GAP;
    infoPtr->minHeight = GetSystemMetrics(SM_CYSIZE);
    if (infoPtr->minHeight & 1) infoPtr->minHeight--;

    STATUSBAR_NotifyFormat(infoPtr, infoPtr->Notify, NF_REQUERY);

    ZeroMemory (&nclm, sizeof(nclm));
    nclm.cbSize = sizeof(nclm);
    SystemParametersInfoW (SPI_GETNONCLIENTMETRICS, nclm.cbSize, &nclm, 0);
    infoPtr->hDefaultFont = CreateFontIndirectW (&nclm.lfStatusFont);

    GetClientRect (hwnd, &rect);


    infoPtr->part0.bound = rect;
    infoPtr->part0.text = 0;
    infoPtr->part0.x = 0;
    infoPtr->part0.style = 0;
    infoPtr->part0.hIcon = 0;


    infoPtr->parts = Alloc (sizeof(STATUSWINDOWPART));
    if (!infoPtr->parts) goto create_fail;
    infoPtr->parts[0].bound = rect;
    infoPtr->parts[0].text = 0;
    infoPtr->parts[0].x = -1;
    infoPtr->parts[0].style = 0;
    infoPtr->parts[0].hIcon = 0;

    OpenThemeData (hwnd, themeClass);

    if (lpCreate->lpszName && (len = strlenW ((LPCWSTR)lpCreate->lpszName)))
    {
        infoPtr->parts[0].text = Alloc ((len + 1)*sizeof(WCHAR));
        if (!infoPtr->parts[0].text) goto create_fail;
        strcpyW (infoPtr->parts[0].text, (LPCWSTR)lpCreate->lpszName);
    }

    dwStyle = GetWindowLongW (hwnd, GWL_STYLE);

    dwStyle &= ~WS_BORDER;
    SetWindowLongW (hwnd, GWL_STYLE, dwStyle);

    infoPtr->height = STATUSBAR_ComputeHeight(infoPtr);

    if (dwStyle & SBT_TOOLTIPS) {
 infoPtr->hwndToolTip =
     CreateWindowExW (0, TOOLTIPS_CLASSW, ((void*)0), WS_POPUP | TTS_ALWAYSTIP,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
        CW_USEDEFAULT, hwnd, 0,
        (HINSTANCE)GetWindowLongPtrW(hwnd, GWLP_HINSTANCE), ((void*)0));

 if (infoPtr->hwndToolTip) {
     NMTOOLTIPSCREATED nmttc;

     nmttc.hdr.hwndFrom = hwnd;
     nmttc.hdr.idFrom = GetWindowLongPtrW (hwnd, GWLP_ID);
     nmttc.hdr.code = NM_TOOLTIPSCREATED;
     nmttc.hwndToolTips = infoPtr->hwndToolTip;

     SendMessageW (lpCreate->hwndParent, WM_NOTIFY, nmttc.hdr.idFrom, (LPARAM)&nmttc);
 }
    }

    return 0;

create_fail:
    TRACE("    failed!\n");
    if (infoPtr) STATUSBAR_WMDestroy(infoPtr);
    return -1;
}
