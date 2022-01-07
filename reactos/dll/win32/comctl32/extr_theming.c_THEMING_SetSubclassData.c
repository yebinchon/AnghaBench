
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int HANDLE ;


 scalar_t__ MAKEINTATOM (int ) ;
 int SetPropW (int ,int ,int ) ;
 int atRefDataProp ;

void THEMING_SetSubclassData (HWND wnd, ULONG_PTR refData)
{
    SetPropW (wnd, (LPCWSTR)MAKEINTATOM(atRefDataProp), (HANDLE)refData);
}
