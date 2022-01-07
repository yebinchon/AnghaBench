
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ LRESULT ;
typedef int HWND ;
typedef scalar_t__ HDC ;
typedef scalar_t__ DWORD ;


 scalar_t__ CreateCompatibleDC (scalar_t__) ;
 int DeleteDC (scalar_t__) ;
 int EM_SETTARGETDEVICE ;
 scalar_t__ GetDC (int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_EDITOR ;
 scalar_t__ ID_WORDWRAP_MARGIN ;
 scalar_t__ ID_WORDWRAP_NONE ;
 int ReleaseDC (int ,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int) ;
 TYPE_1__ get_print_rect (scalar_t__) ;
 scalar_t__ make_dc () ;

void target_device(HWND hMainWnd, DWORD wordWrap)
{
    HWND hEditorWnd = GetDlgItem(hMainWnd, IDC_EDITOR);

    if(wordWrap == ID_WORDWRAP_MARGIN)
    {
        int width = 0;
        LRESULT result;
        HDC hdc = make_dc();
        RECT rc = get_print_rect(hdc);

        width = rc.right - rc.left;
        if(!hdc)
        {
            HDC hMaindc = GetDC(hMainWnd);
            hdc = CreateCompatibleDC(hMaindc);
            ReleaseDC(hMainWnd, hMaindc);
        }
        result = SendMessageW(hEditorWnd, EM_SETTARGETDEVICE, (WPARAM)hdc, width);
        DeleteDC(hdc);
        if (result)
            return;


    }

    if (wordWrap != ID_WORDWRAP_NONE) {
        SendMessageW(hEditorWnd, EM_SETTARGETDEVICE, 0, 0);
    } else {
        SendMessageW(hEditorWnd, EM_SETTARGETDEVICE, 0, 1);
    }

}
