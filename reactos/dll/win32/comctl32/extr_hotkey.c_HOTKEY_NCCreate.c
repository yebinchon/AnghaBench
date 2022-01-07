
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; int strNone; int CaretPos; scalar_t__ CurrMod; scalar_t__ InvMod; scalar_t__ InvComb; scalar_t__ HotKey; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ HOTKEY_INFO ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int CREATESTRUCTW ;


 int COMCTL32_hModule ;
 int DefWindowProcW (int ,int ,int ,int ) ;
 int GWL_EXSTYLE ;
 int GetSystemMetrics (int ) ;
 int GetWindowLongW (int ,int ) ;
 int HKY_NONE ;
 int LoadStringW (int ,int ,int ,int) ;
 int SM_CXBORDER ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int WM_NCCREATE ;
 int WS_EX_CLIENTEDGE ;
 TYPE_1__* heap_alloc_zero (int) ;

__attribute__((used)) static inline LRESULT
HOTKEY_NCCreate (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    HOTKEY_INFO *infoPtr;
    DWORD dwExStyle = GetWindowLongW (hwnd, GWL_EXSTYLE);
    SetWindowLongW (hwnd, GWL_EXSTYLE,
                    dwExStyle | WS_EX_CLIENTEDGE);


    infoPtr = heap_alloc_zero (sizeof(*infoPtr));
    SetWindowLongPtrW(hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->HotKey = infoPtr->InvComb = infoPtr->InvMod = infoPtr->CurrMod = 0;
    infoPtr->CaretPos = GetSystemMetrics(SM_CXBORDER);
    infoPtr->hwndSelf = hwnd;
    LoadStringW(COMCTL32_hModule, HKY_NONE, infoPtr->strNone, 15);

    return DefWindowProcW (infoPtr->hwndSelf, WM_NCCREATE, 0, (LPARAM)lpcs);
}
