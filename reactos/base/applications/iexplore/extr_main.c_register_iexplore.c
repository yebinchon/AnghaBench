
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int FAILED (int ) ;
 int RegInstallA (int *,char*,int *) ;
 int WINE_MESSAGE (char*) ;
 scalar_t__ check_native_ie () ;

__attribute__((used)) static DWORD register_iexplore(BOOL doregister)
{
    HRESULT hres;

    if (check_native_ie()) {
        WINE_MESSAGE("Native IE detected, not doing registration\n");
        return 0;
    }

    hres = RegInstallA(((void*)0), doregister ? "RegisterIE" : "UnregisterIE", ((void*)0));
    return FAILED(hres);
}
