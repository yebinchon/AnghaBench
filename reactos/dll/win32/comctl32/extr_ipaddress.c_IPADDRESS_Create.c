
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WPARAM ;
typedef scalar_t__ WNDPROC ;
struct TYPE_17__ {int hwndParent; } ;
struct TYPE_16__ {int Enabled; TYPE_3__* Part; int Notify; int Self; } ;
struct TYPE_15__ {int UpperLimit; int EditHwnd; scalar_t__ OrigProc; scalar_t__ LowerLimit; } ;
struct TYPE_14__ {int lfFaceName; } ;
struct TYPE_13__ {int right; int left; scalar_t__ top; scalar_t__ bottom; } ;
typedef TYPE_1__ RECT ;
typedef int LRESULT ;
typedef TYPE_2__ LOGFONTW ;
typedef TYPE_3__ IPPART_INFO ;
typedef TYPE_4__ IPADDRESS_INFO ;
typedef int HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef scalar_t__ HFONT ;
typedef int DWORD_PTR ;
typedef TYPE_5__ CREATESTRUCTA ;


 int ANSI_VAR_FONT ;
 scalar_t__ CreateFontIndirectW (TYPE_2__*) ;
 int CreateWindowW (int ,int *,int,int,scalar_t__,int,scalar_t__,int ,int ,int ,int *) ;
 int ES_CENTER ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GWLP_HINSTANCE ;
 int GWLP_WNDPROC ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetObjectW (scalar_t__,int,TYPE_2__*) ;
 scalar_t__ GetStockObject (int ) ;
 scalar_t__ GetWindowLongPtrW (int ,int ) ;
 int GetWindowLongW (int ,int ) ;
 scalar_t__ IPADDRESS_SubclassProc ;
 int IPADDRESS_UpdateText (TYPE_4__*) ;
 int IP_SUBCLASS_PROP ;
 int SPI_GETICONTITLELOGFONT ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetPropW (int ,int ,int ) ;
 scalar_t__ SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int SystemParametersInfoW (int ,int ,TYPE_2__*,int ) ;
 int TRACE (char*) ;
 int TRUE ;
 int WC_EDITW ;
 int WM_SETFONT ;
 int WS_BORDER ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 TYPE_4__* heap_alloc_zero (int) ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static LRESULT IPADDRESS_Create (HWND hwnd, const CREATESTRUCTA *lpCreate)
{
    IPADDRESS_INFO *infoPtr;
    RECT rcClient, edit;
    int i, fieldsize;
    HFONT hFont, hSysFont;
    LOGFONTW logFont, logSysFont;

    TRACE("\n");

    SetWindowLongW (hwnd, GWL_STYLE,
      GetWindowLongW(hwnd, GWL_STYLE) & ~WS_BORDER);

    infoPtr = heap_alloc_zero (sizeof(*infoPtr));
    if (!infoPtr) return -1;
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);

    GetClientRect (hwnd, &rcClient);

    fieldsize = (rcClient.right - rcClient.left) / 4;

    edit.top = rcClient.top + 2;
    edit.bottom = rcClient.bottom - 2;

    infoPtr->Self = hwnd;
    infoPtr->Enabled = TRUE;
    infoPtr->Notify = lpCreate->hwndParent;

    hSysFont = GetStockObject(ANSI_VAR_FONT);
    GetObjectW(hSysFont, sizeof(LOGFONTW), &logSysFont);
    SystemParametersInfoW(SPI_GETICONTITLELOGFONT, 0, &logFont, 0);
    strcpyW(logFont.lfFaceName, logSysFont.lfFaceName);
    hFont = CreateFontIndirectW(&logFont);

    for (i = 0; i < 4; i++) {
 IPPART_INFO* part = &infoPtr->Part[i];

 part->LowerLimit = 0;
 part->UpperLimit = 255;
        edit.left = rcClient.left + i*fieldsize + 6;
        edit.right = rcClient.left + (i+1)*fieldsize - 2;
        part->EditHwnd =
  CreateWindowW (WC_EDITW, ((void*)0), WS_CHILD | WS_VISIBLE | ES_CENTER,
                               edit.left, edit.top, edit.right - edit.left,
          edit.bottom - edit.top, hwnd, (HMENU) 1,
          (HINSTANCE)GetWindowLongPtrW(hwnd, GWLP_HINSTANCE), ((void*)0));
        SendMessageW(part->EditHwnd, WM_SETFONT, (WPARAM) hFont, FALSE);
 SetPropW(part->EditHwnd, IP_SUBCLASS_PROP, hwnd);
        part->OrigProc = (WNDPROC)
  SetWindowLongPtrW (part->EditHwnd, GWLP_WNDPROC,
    (DWORD_PTR)IPADDRESS_SubclassProc);
        EnableWindow(part->EditHwnd, infoPtr->Enabled);
    }

    IPADDRESS_UpdateText (infoPtr);

    return 0;
}
