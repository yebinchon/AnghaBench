
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int dwStyle; int todaysDate; int hwndSelf; } ;
struct TYPE_9__ {short x; short y; } ;
typedef int SYSTEMTIME ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ MONTHCAL_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HMENU ;


 int ARRAY_SIZE (int *) ;
 int AppendMenuW (int ,int,int,int *) ;
 int COMCTL32_hModule ;
 int ClientToScreen (int ,TYPE_1__*) ;
 int CreatePopupMenu () ;
 scalar_t__ HIWORD (int ) ;
 int IDM_GOTODAY ;
 scalar_t__ LOWORD (int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MCS_MULTISELECT ;
 int MF_ENABLED ;
 int MF_STRING ;
 int MONTHCAL_NotifySelect (TYPE_2__*) ;
 int MONTHCAL_NotifySelectionChange (TYPE_2__*) ;
 int MONTHCAL_SetCurSel (TYPE_2__*,int *) ;
 int MONTHCAL_SetSelRange (TYPE_2__*,int *) ;
 int TPM_NONOTIFY ;
 int TPM_RETURNCMD ;
 int TPM_RIGHTBUTTON ;
 scalar_t__ TrackPopupMenu (int ,int,short,short,int ,int ,int *) ;

__attribute__((used)) static LRESULT
MONTHCAL_RButtonUp(MONTHCAL_INFO *infoPtr, LPARAM lParam)
{
  HMENU hMenu;
  POINT menupoint;
  WCHAR buf[32];

  hMenu = CreatePopupMenu();
  LoadStringW(COMCTL32_hModule, IDM_GOTODAY, buf, ARRAY_SIZE(buf));
  AppendMenuW(hMenu, MF_STRING|MF_ENABLED, 1, buf);
  menupoint.x = (short)LOWORD(lParam);
  menupoint.y = (short)HIWORD(lParam);
  ClientToScreen(infoPtr->hwndSelf, &menupoint);
  if( TrackPopupMenu(hMenu, TPM_RIGHTBUTTON | TPM_NONOTIFY | TPM_RETURNCMD,
       menupoint.x, menupoint.y, 0, infoPtr->hwndSelf, ((void*)0)))
  {
      if (infoPtr->dwStyle & MCS_MULTISELECT)
      {
          SYSTEMTIME range[2];

          range[0] = range[1] = infoPtr->todaysDate;
          MONTHCAL_SetSelRange(infoPtr, range);
      }
      else
          MONTHCAL_SetCurSel(infoPtr, &infoPtr->todaysDate);

      MONTHCAL_NotifySelectionChange(infoPtr);
      MONTHCAL_NotifySelect(infoPtr);
  }

  return 0;
}
