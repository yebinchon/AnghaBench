
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_6__ {int idFrom; int code; int hwndFrom; } ;
struct TYPE_8__ {int wVKey; TYPE_1__ hdr; int flags; } ;
struct TYPE_7__ {scalar_t__ uFocus; scalar_t__ uNumItem; int hwndNotify; int hwnd; } ;
typedef TYPE_2__ TAB_INFO ;
typedef TYPE_3__ NMTCKEYDOWN ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef scalar_t__ INT ;


 int GWLP_ID ;
 int GetWindowLongPtrW (int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TAB_SetCurFocus (TYPE_2__*,scalar_t__) ;
 int TCN_KEYDOWN ;


 int WM_NOTIFY ;

__attribute__((used)) static LRESULT TAB_KeyDown(TAB_INFO* infoPtr, WPARAM keyCode, LPARAM lParam)
{
  INT newItem = -1;
  NMTCKEYDOWN nm;


  nm.hdr.hwndFrom = infoPtr->hwnd;
  nm.hdr.idFrom = GetWindowLongPtrW(infoPtr->hwnd, GWLP_ID);
  nm.hdr.code = TCN_KEYDOWN;
  nm.wVKey = keyCode;
  nm.flags = lParam;
  SendMessageW(infoPtr->hwndNotify, WM_NOTIFY, nm.hdr.idFrom, (LPARAM)&nm);

  switch (keyCode)
  {
    case 129:
      newItem = infoPtr->uFocus - 1;
      break;
    case 128:
      newItem = infoPtr->uFocus + 1;
      break;
  }


  if (newItem >= 0 && newItem < infoPtr->uNumItem && infoPtr->uFocus != newItem)
      TAB_SetCurFocus(infoPtr, newItem);

  return 0;
}
