
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * set_filename; int dlg_hwnd; } ;
typedef scalar_t__ LPCWSTR ;
typedef TYPE_1__ FileDialogImpl ;
typedef int BOOL ;


 int IDC_FILENAME ;
 int LocalFree (int *) ;
 int SetDlgItemTextW (int ,int ,int *) ;
 int * StrDupW (scalar_t__) ;

__attribute__((used)) static BOOL set_file_name(FileDialogImpl *This, LPCWSTR str)
{
    if(This->set_filename)
        LocalFree(This->set_filename);

    This->set_filename = str ? StrDupW(str) : ((void*)0);

    return SetDlgItemTextW(This->dlg_hwnd, IDC_FILENAME, This->set_filename);
}
