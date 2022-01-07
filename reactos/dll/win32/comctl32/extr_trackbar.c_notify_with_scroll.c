
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int dwStyle; scalar_t__ hwndSelf; int hwndNotify; } ;
typedef TYPE_1__ TRACKBAR_INFO ;
typedef int LPARAM ;


 int SendMessageW (int ,int ,int ,int ) ;
 int TBS_VERT ;
 int TRACE (char*,int ) ;
 int WM_HSCROLL ;
 int WM_VSCROLL ;

__attribute__((used)) static void notify_with_scroll (const TRACKBAR_INFO *infoPtr, UINT code)
{
    UINT scroll = infoPtr->dwStyle & TBS_VERT ? WM_VSCROLL : WM_HSCROLL;

    TRACE("%x\n", code);

    SendMessageW (infoPtr->hwndNotify, scroll, code, (LPARAM)infoPtr->hwndSelf);
}
