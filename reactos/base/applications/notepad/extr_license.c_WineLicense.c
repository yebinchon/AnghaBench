
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int LicenseCaption; int License; } ;
typedef TYPE_1__ LICENSE ;
typedef int HWND ;


 int MB_ICONINFORMATION ;
 int MB_OK ;
 int MessageBoxA (int ,int ,int ,int) ;
 TYPE_1__ WineLicense_En ;

VOID WineLicense(HWND Wnd)
{

    LICENSE *License = &WineLicense_En;
    MessageBoxA(Wnd,
                License->License,
                License->LicenseCaption,
                MB_ICONINFORMATION | MB_OK);
}
