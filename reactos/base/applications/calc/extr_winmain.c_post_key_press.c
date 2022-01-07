
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_2__ {int hWnd; } ;
typedef int TCHAR ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int BM_CLICK ;
 int BM_SETSTATE ;
 scalar_t__ BS_DEFPUSHBUTTON ;
 scalar_t__ BS_OWNERDRAW ;
 scalar_t__ BS_PUSHBUTTON ;
 int GWL_STYLE ;
 int GetClassName (int ,int *,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowLongPtr (int ,int ) ;
 int IsWindowEnabled (int ) ;
 int KEY_IS_UP ;
 int KEY_WAS_DOWN ;
 int PostMessage (int ,int ,int,int ) ;
 int SIZEOF (int *) ;
 int WC_BUTTON ;
 int _tcscmp (int *,int ) ;
 TYPE_1__ calc ;

__attribute__((used)) static LRESULT post_key_press(LPARAM lParam, WORD idc)
{
    HWND hCtlWnd = GetDlgItem(calc.hWnd,idc);
    TCHAR ClassName[64];


    if (!IsWindowEnabled(hCtlWnd))
        return 1;

    if (!GetClassName(hCtlWnd, ClassName, SIZEOF(ClassName)))
        return 1;

    if (!_tcscmp(ClassName, WC_BUTTON)) {
        DWORD dwStyle = GetWindowLongPtr(hCtlWnd, GWL_STYLE) & 0xF;


        if (dwStyle == BS_PUSHBUTTON || dwStyle == BS_DEFPUSHBUTTON || dwStyle == BS_OWNERDRAW) {
            if (!(lParam & KEY_WAS_DOWN)) {
                PostMessage(hCtlWnd, BM_SETSTATE, 1, 0);
            } else
            if ((lParam & KEY_IS_UP)) {
                PostMessage(hCtlWnd, BM_SETSTATE, 0, 0);
                PostMessage(hCtlWnd, BM_CLICK, 0, 0);
            }
            return 1;
        }
    }

    if ((lParam & KEY_IS_UP)) {
        PostMessage(hCtlWnd, BM_CLICK, 0, 0);
    }
    return 1;
}
