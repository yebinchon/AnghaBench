
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int FileDialogImpl ;




 int FALSE ;
 int HIWORD (int ) ;
 int notifysink_on_bn_clicked (int *,int ,int ) ;
 int notifysink_on_cbn_selchange (int *,int ,int ) ;

__attribute__((used)) static LRESULT notifysink_on_wm_command(FileDialogImpl *This, HWND hwnd, WPARAM wparam, LPARAM lparam)
{
    switch(HIWORD(wparam))
    {
    case 129: return notifysink_on_bn_clicked(This, hwnd, wparam);
    case 128: return notifysink_on_cbn_selchange(This, hwnd, wparam);
    }

    return FALSE;
}
