
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {scalar_t__ hasHelp; scalar_t__ hasApply; } ;
struct TYPE_7__ {int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ PropSheetInfo ;
typedef TYPE_3__ PADDING_INFO ;
typedef int HWND ;
typedef int BOOL ;


 int DM_SETDEFID ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int IDCANCEL ;
 int IDC_APPLY_BUTTON ;
 int IDHELP ;
 int IDOK ;
 TYPE_3__ PROPSHEET_GetPaddingInfo (int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SW_HIDE ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int ,int,int,int ,int ,int) ;
 int ShowWindow (int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL PROPSHEET_AdjustButtons(HWND hwndParent, const PropSheetInfo* psInfo)
{
  HWND hwndButton = GetDlgItem(hwndParent, IDOK);
  RECT rcSheet;
  int x, y;
  int num_buttons = 2;
  int buttonWidth, buttonHeight;
  PADDING_INFO padding = PROPSHEET_GetPaddingInfo(hwndParent);

  if (psInfo->hasApply)
    num_buttons++;

  if (psInfo->hasHelp)
    num_buttons++;




  GetClientRect(hwndButton, &rcSheet);
  buttonWidth = rcSheet.right;
  buttonHeight = rcSheet.bottom;




  GetClientRect(hwndParent, &rcSheet);




  y = rcSheet.bottom - (padding.y + buttonHeight);




  hwndButton = GetDlgItem(hwndParent, IDOK);

  x = rcSheet.right - ((padding.x + buttonWidth) * num_buttons);

  SetWindowPos(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  SendMessageW(hwndParent, DM_SETDEFID, IDOK, 0);





  hwndButton = GetDlgItem(hwndParent, IDCANCEL);

  x += padding.x + buttonWidth;

  SetWindowPos(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);




  hwndButton = GetDlgItem(hwndParent, IDC_APPLY_BUTTON);

  if(psInfo->hasApply)
    x += padding.x + buttonWidth;
  else
    ShowWindow(hwndButton, SW_HIDE);

  SetWindowPos(hwndButton, 0, x, y, 0, 0,
              SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);
  EnableWindow(hwndButton, FALSE);




  hwndButton = GetDlgItem(hwndParent, IDHELP);

  x += padding.x + buttonWidth;
  SetWindowPos(hwndButton, 0, x, y, 0, 0,
              SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  if(!psInfo->hasHelp)
    ShowWindow(hwndButton, SW_HIDE);

  return TRUE;
}
