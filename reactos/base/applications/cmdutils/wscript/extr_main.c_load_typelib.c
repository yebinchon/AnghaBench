
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ITypeLib ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ FALSE ;
 int IID_IArguments2 ;
 int IID_IHost ;
 int ITypeLib_GetTypeInfoOfGuid (int *,int *,int *) ;
 int ITypeLib_Release (int *) ;
 int LoadTypeLib (char const*,int **) ;
 scalar_t__ SUCCEEDED (int ) ;
 int arguments_ti ;
 int host_ti ;

__attribute__((used)) static BOOL load_typelib(void)
{
    ITypeLib *typelib;
    HRESULT hres;

    static const WCHAR wscript_exeW[] = {'w','s','c','r','i','p','t','.','e','x','e',0};

    hres = LoadTypeLib(wscript_exeW, &typelib);
    if(FAILED(hres))
        return FALSE;

    hres = ITypeLib_GetTypeInfoOfGuid(typelib, &IID_IHost, &host_ti);
    if(SUCCEEDED(hres))
        hres = ITypeLib_GetTypeInfoOfGuid(typelib, &IID_IArguments2, &arguments_ti);

    ITypeLib_Release(typelib);
    return SUCCEEDED(hres);
}
