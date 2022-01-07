
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ set_filename; int dlg_hwnd; } ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ FileDialogImpl ;


 scalar_t__ CoTaskMemAlloc (int) ;
 int GetDlgItem (int ,int ) ;
 int IDC_FILENAME ;
 int SendMessageW (int ,int ,int,int ) ;
 int WM_GETTEXT ;
 int WM_GETTEXTLENGTH ;
 int lstrcpyW (scalar_t__,scalar_t__) ;
 int lstrlenW (scalar_t__) ;

__attribute__((used)) static UINT get_file_name(FileDialogImpl *This, LPWSTR *str)
{
    HWND hwnd_edit = GetDlgItem(This->dlg_hwnd, IDC_FILENAME);
    UINT len;

    if(!hwnd_edit)
    {
        if(This->set_filename)
        {
            len = lstrlenW(This->set_filename);
            *str = CoTaskMemAlloc(sizeof(WCHAR)*(len+1));
            lstrcpyW(*str, This->set_filename);
            return len;
        }
        return 0;
    }

    len = SendMessageW(hwnd_edit, WM_GETTEXTLENGTH, 0, 0);
    *str = CoTaskMemAlloc(sizeof(WCHAR)*(len+1));
    if(!*str)
        return 0;

    SendMessageW(hwnd_edit, WM_GETTEXT, len+1, (LPARAM)*str);
    return len;
}
