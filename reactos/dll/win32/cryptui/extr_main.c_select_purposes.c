
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PurposeSelection ;
typedef int HWND ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_ADD_PURPOSE ;
 int IDC_CERTIFICATE_USAGES ;



 int TRUE ;
 int redraw_states (int ,int ) ;

__attribute__((used)) static void select_purposes(HWND hwnd, PurposeSelection selection)
{
    HWND lv = GetDlgItem(hwnd, IDC_CERTIFICATE_USAGES);

    switch (selection)
    {
    case 129:
    case 130:
        EnableWindow(lv, FALSE);
        redraw_states(lv, FALSE);
        EnableWindow(GetDlgItem(hwnd, IDC_ADD_PURPOSE), FALSE);
        break;
    case 128:
        EnableWindow(lv, TRUE);
        redraw_states(lv, TRUE);
        EnableWindow(GetDlgItem(hwnd, IDC_ADD_PURPOSE), TRUE);
    }
}
