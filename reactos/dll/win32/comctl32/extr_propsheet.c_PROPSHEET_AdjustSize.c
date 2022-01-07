
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int x; int y; } ;
struct TYPE_12__ {void* width; void* height; } ;
struct TYPE_11__ {int bottom; int left; int right; int top; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ PropSheetInfo ;
typedef TYPE_3__ PADDING_INFO ;
typedef int LPARAM ;
typedef int LONG ;
typedef int HWND ;
typedef int BOOL ;


 int AdjustWindowRect (TYPE_1__*,int,int ) ;
 int FALSE ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowLongW (int ,int ) ;
 int IDC_TABCONTROL ;
 int IDOK ;
 int MapDialogRect (int ,TYPE_1__*) ;
 void* MulDiv (int,int,int) ;
 TYPE_3__ PROPSHEET_GetPaddingInfo (int ) ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetRect (TYPE_1__*,int ,int ,void*,void*) ;
 int SetWindowPos (int ,int ,int ,int ,int,int,int) ;
 int TCM_ADJUSTRECT ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int WS_CHILD ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static BOOL PROPSHEET_AdjustSize(HWND hwndDlg, PropSheetInfo* psInfo)
{
  HWND hwndTabCtrl = GetDlgItem(hwndDlg, IDC_TABCONTROL);
  HWND hwndButton = GetDlgItem(hwndDlg, IDOK);
  RECT rc,tabRect;
  int buttonHeight;
  PADDING_INFO padding = PROPSHEET_GetPaddingInfo(hwndDlg);
  RECT units;
  LONG style;


  GetClientRect(hwndButton, &rc);
  buttonHeight = rc.bottom;




  SetRect(&rc, 0, 0, psInfo->width, psInfo->height);
  MapDialogRect(hwndDlg, &rc);


  units.left = units.right = 4;
  units.top = units.bottom = 8;
  MapDialogRect(hwndDlg, &units);




  GetClientRect(hwndTabCtrl,&tabRect);

  SendMessageW(hwndTabCtrl, TCM_ADJUSTRECT, FALSE, (LPARAM)&tabRect);

  if ((rc.bottom - rc.top) < (tabRect.bottom - tabRect.top))
  {
      rc.bottom = rc.top + tabRect.bottom - tabRect.top;
      psInfo->height = MulDiv((rc.bottom - rc.top),8,units.top);
  }

  if ((rc.right - rc.left) < (tabRect.right - tabRect.left))
  {
      rc.right = rc.left + tabRect.right - tabRect.left;
      psInfo->width = MulDiv((rc.right - rc.left),4,units.left);
  }

  SendMessageW(hwndTabCtrl, TCM_ADJUSTRECT, TRUE, (LPARAM)&rc);

  rc.right -= rc.left;
  rc.bottom -= rc.top;
  TRACE("setting tab %p, rc (0,0)-(%d,%d)\n",
        hwndTabCtrl, rc.right, rc.bottom);
  SetWindowPos(hwndTabCtrl, 0, 0, 0, rc.right, rc.bottom,
               SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE);

  GetClientRect(hwndTabCtrl, &rc);

  TRACE("tab client rc %s\n", wine_dbgstr_rect(&rc));

  rc.right += (padding.x * 2);
  rc.bottom += buttonHeight + (3 * padding.y);

  style = GetWindowLongW(hwndDlg, GWL_STYLE);
  if (!(style & WS_CHILD))
    AdjustWindowRect(&rc, style, FALSE);

  rc.right -= rc.left;
  rc.bottom -= rc.top;




  TRACE("setting dialog %p, rc (0,0)-(%d,%d)\n",
        hwndDlg, rc.right, rc.bottom);
  SetWindowPos(hwndDlg, 0, 0, 0, rc.right, rc.bottom,
               SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE);
  return TRUE;
}
