
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * lpCreateParams; } ;
typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int FileDialogImpl ;
typedef TYPE_1__ CREATESTRUCTW ;


 int GWLP_USERDATA ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*,int *) ;
 int TRUE ;

__attribute__((used)) static LRESULT notifysink_on_create(HWND hwnd, CREATESTRUCTW *crs)
{
    FileDialogImpl *This = crs->lpCreateParams;
    TRACE("%p\n", This);

    SetWindowLongPtrW(hwnd, GWLP_USERDATA, (LPARAM)This);
    return TRUE;
}
