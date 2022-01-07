
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 scalar_t__ BST_CHECKED ;
 int FR_DOWN ;
 int FR_MATCHCASE ;
 int FR_WHOLEWORD ;
 scalar_t__ IsDlgButtonChecked (int ,int ) ;
 int chx1 ;
 int chx2 ;
 int rad2 ;

__attribute__((used)) static DWORD COMDLG32_FR_GetFlags(HWND hDlgWnd)
{
 DWORD flags = 0;
 if(IsDlgButtonChecked(hDlgWnd, rad2) == BST_CHECKED)
  flags |= FR_DOWN;
 if(IsDlgButtonChecked(hDlgWnd, chx1) == BST_CHECKED)
  flags |= FR_WHOLEWORD;
 if(IsDlgButtonChecked(hDlgWnd, chx2) == BST_CHECKED)
  flags |= FR_MATCHCASE;
        return flags;
}
