
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int y; int x; } ;
struct TYPE_5__ {int top; int left; } ;
typedef TYPE_1__ RECT ;
typedef int POINT ;
typedef TYPE_2__ PADDING_INFO ;
typedef int HWND ;


 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_TABCONTROL ;
 int MapWindowPoints (int ,int ,int *,int) ;

__attribute__((used)) static PADDING_INFO PROPSHEET_GetPaddingInfo(HWND hwndDlg)
{
  HWND hwndTab = GetDlgItem(hwndDlg, IDC_TABCONTROL);
  RECT rcTab;
  PADDING_INFO padding;

  GetWindowRect(hwndTab, &rcTab);
  MapWindowPoints( 0, hwndDlg, (POINT *)&rcTab, 2 );

  padding.x = rcTab.left;
  padding.y = rcTab.top;

  return padding;
}
