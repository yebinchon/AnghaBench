
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int POINT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int CONV_LPARAMTOPOINT (int ,int *) ;
 int ClientToScreen (int ,int *) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,int *) ;
 int IDC_COLOR_RES ;
 int IDC_COLOR_RESULT ;
 int PostMessageA (int ,int ,int ,int ) ;
 scalar_t__ PtInRect (int *,int ) ;
 int TRUE ;
 int WM_COMMAND ;

__attribute__((used)) static BOOL CC_MouseCheckResultWindow( HWND hDlg, LPARAM lParam )
{
 HWND hwnd;
 POINT point;
 RECT rect;

 CONV_LPARAMTOPOINT(lParam, &point);
 ClientToScreen(hDlg, &point);
 hwnd = GetDlgItem(hDlg, IDC_COLOR_RESULT);
 GetWindowRect(hwnd, &rect);
 if (PtInRect(&rect, point))
 {
  PostMessageA(hDlg, WM_COMMAND, IDC_COLOR_RES, 0);
  return TRUE;
 }
 return FALSE;
}
