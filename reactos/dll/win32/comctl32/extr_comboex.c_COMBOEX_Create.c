
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mylogfont ;
typedef int WPARAM ;
typedef int WCHAR ;
struct TYPE_13__ {int selected; int NtfUnicode; scalar_t__ hwndCombo; scalar_t__ hwndEdit; void* font; void* defaultFont; scalar_t__ hwndNotify; int unicode; scalar_t__ hwndSelf; } ;
struct TYPE_12__ {int style; int cy; int cx; int x; int y; scalar_t__ hwndParent; } ;
struct TYPE_11__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int LRESULT ;
typedef int LOGFONTW ;
typedef scalar_t__ INT ;
typedef scalar_t__ HWND ;
typedef int HMENU ;
typedef int HINSTANCE ;
typedef void* HFONT ;
typedef int DWORD_PTR ;
typedef TYPE_2__ CREATESTRUCTA ;
typedef TYPE_3__ COMBOEX_INFO ;


 TYPE_3__* Alloc (int) ;
 int CBS_DROPDOWN ;
 int CBS_DROPDOWNLIST ;
 int CBS_NOINTEGRALHEIGHT ;
 int CBS_OWNERDRAWFIXED ;
 int COMBOEX_AdjustEditPos (TYPE_3__*) ;
 int COMBOEX_ComboWndProc ;
 int COMBOEX_EditWndProc ;
 int COMBOEX_ReSize (TYPE_3__*) ;
 int COMBO_SUBCLASSID ;
 void* CreateFontIndirectW (int *) ;
 scalar_t__ CreateWindowExW (int ,int ,int const*,int,int ,int ,int ,int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ CreateWindowW (int ,int const*,int,int ,int ,int ,int ,scalar_t__,int ,int ,int *) ;
 int EC_USEFONTINFO ;
 int EDIT_SUBCLASSID ;
 int EM_SETMARGINS ;
 int ES_AUTOHSCROLL ;
 int GWLP_HINSTANCE ;
 int GWLP_ID ;
 int GWL_STYLE ;
 int GetClientRect (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetWindowLongPtrW (scalar_t__,int ) ;
 int GetWindowLongW (scalar_t__,int ) ;
 int GetWindowRect (scalar_t__,TYPE_1__*) ;
 int HWND_TOP ;
 int IsWindowUnicode (scalar_t__) ;
 scalar_t__ NFR_ANSI ;
 scalar_t__ NFR_UNICODE ;
 int NF_QUERY ;
 int SPI_GETICONTITLELOGFONT ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOREDRAW ;
 int SWP_NOZORDER ;
 scalar_t__ SendMessageW (scalar_t__,int ,int ,int ) ;
 int SetWindowLongPtrW (scalar_t__,int ,int ) ;
 int SetWindowPos (scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,int) ;
 int SetWindowSubclass (scalar_t__,int ,int ,int ) ;
 int SystemParametersInfoW (int ,int,int *,int ) ;
 int TRACE (char*,int ,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WARN (char*,scalar_t__) ;
 int WC_COMBOBOXW ;
 int WC_EDITW ;
 int WM_GETFONT ;
 int WM_NOTIFYFORMAT ;
 int WM_SETFONT ;
 int WS_CHILD ;
 int WS_CLIPCHILDREN ;
 int WS_CLIPSIBLINGS ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;
 int comboex ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static LRESULT COMBOEX_Create (HWND hwnd, CREATESTRUCTA const *cs)
{
    static const WCHAR NIL[] = { 0 };
    COMBOEX_INFO *infoPtr;
    LOGFONTW mylogfont;
    RECT win_rect;
    INT i;


    infoPtr = Alloc (sizeof(COMBOEX_INFO));
    if (!infoPtr) return -1;




    infoPtr->hwndSelf = hwnd;
    infoPtr->selected = -1;

    infoPtr->unicode = IsWindowUnicode (hwnd);
    infoPtr->hwndNotify = cs->hwndParent;

    i = SendMessageW(infoPtr->hwndNotify, WM_NOTIFYFORMAT, (WPARAM)hwnd, NF_QUERY);
    if ((i != NFR_ANSI) && (i != NFR_UNICODE)) {
 WARN("wrong response to WM_NOTIFYFORMAT (%d), assuming ANSI\n", i);
 i = NFR_ANSI;
    }
    infoPtr->NtfUnicode = (i == NFR_UNICODE);

    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);

    if (TRACE_ON(comboex)) {
 RECT client, rect;
 GetWindowRect(hwnd, &rect);
 GetClientRect(hwnd, &client);
 TRACE("EX window=(%s), client=(%s)\n",
  wine_dbgstr_rect(&rect), wine_dbgstr_rect(&client));
    }
    infoPtr->hwndCombo = CreateWindowW (WC_COMBOBOXW, NIL,
                         WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_VSCROLL |
                         CBS_NOINTEGRALHEIGHT | CBS_DROPDOWNLIST |
    WS_CHILD | WS_VISIBLE | CBS_OWNERDRAWFIXED |
    GetWindowLongW (hwnd, GWL_STYLE),
    cs->y, cs->x, cs->cx, cs->cy, hwnd,
    (HMENU) GetWindowLongPtrW (hwnd, GWLP_ID),
    (HINSTANCE)GetWindowLongPtrW (hwnd, GWLP_HINSTANCE), ((void*)0));

    SetWindowSubclass(infoPtr->hwndCombo, COMBOEX_ComboWndProc, COMBO_SUBCLASSID,
                      (DWORD_PTR)hwnd);
    infoPtr->font = (HFONT)SendMessageW (infoPtr->hwndCombo, WM_GETFONT, 0, 0);





    if ((cs->style & CBS_DROPDOWNLIST) == CBS_DROPDOWN) {
 infoPtr->hwndEdit = CreateWindowExW (0, WC_EDITW, NIL,
      WS_CHILD | WS_VISIBLE | WS_CLIPSIBLINGS | ES_AUTOHSCROLL,
      0, 0, 0, 0,
      infoPtr->hwndCombo,
      (HMENU) GetWindowLongPtrW (hwnd, GWLP_ID),
      (HINSTANCE)GetWindowLongPtrW (hwnd, GWLP_HINSTANCE), ((void*)0));

 SetWindowSubclass(infoPtr->hwndEdit, COMBOEX_EditWndProc, EDIT_SUBCLASSID,
                   (DWORD_PTR)hwnd);

 infoPtr->font = (HFONT)SendMessageW(infoPtr->hwndCombo, WM_GETFONT, 0, 0);
    }





    if (!infoPtr->font) {
 SystemParametersInfoW (SPI_GETICONTITLELOGFONT, sizeof(mylogfont),
          &mylogfont, 0);
 infoPtr->font = infoPtr->defaultFont = CreateFontIndirectW (&mylogfont);
    }
    SendMessageW (infoPtr->hwndCombo, WM_SETFONT, (WPARAM)infoPtr->font, 0);
    if (infoPtr->hwndEdit) {
 SendMessageW (infoPtr->hwndEdit, WM_SETFONT, (WPARAM)infoPtr->font, 0);
       SendMessageW (infoPtr->hwndEdit, EM_SETMARGINS, EC_USEFONTINFO, 0);
    }

    COMBOEX_ReSize (infoPtr);



    GetWindowRect(hwnd, &win_rect);

    if (TRACE_ON(comboex)) {
 RECT client, rect;
 GetClientRect(hwnd, &client);
 GetWindowRect(infoPtr->hwndCombo, &rect);
 TRACE("EX window=(%s) client=(%s) CB wnd=(%s)\n",
  wine_dbgstr_rect(&win_rect), wine_dbgstr_rect(&client),
  wine_dbgstr_rect(&rect));
    }
    SetWindowPos(infoPtr->hwndCombo, HWND_TOP, 0, 0,
   win_rect.right - win_rect.left, win_rect.bottom - win_rect.top,
   SWP_NOACTIVATE | SWP_NOREDRAW);

    GetWindowRect(infoPtr->hwndCombo, &win_rect);
    TRACE("CB window=(%s)\n", wine_dbgstr_rect(&win_rect));
    SetWindowPos(hwnd, HWND_TOP, 0, 0,
   win_rect.right - win_rect.left, win_rect.bottom - win_rect.top,
   SWP_NOACTIVATE | SWP_NOZORDER | SWP_NOMOVE);

    COMBOEX_AdjustEditPos (infoPtr);

    return 0;
}
