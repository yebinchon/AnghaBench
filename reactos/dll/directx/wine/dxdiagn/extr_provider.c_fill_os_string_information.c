
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int OSVERSIONINFOW ;
typedef int IDxDiagContainerImpl_Container ;
typedef int HRESULT ;


 size_t ARRAY_SIZE (char const**) ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int add_bstr_property (int *,char const*,char const*) ;

__attribute__((used)) static HRESULT fill_os_string_information(IDxDiagContainerImpl_Container *node, OSVERSIONINFOW *info)
{
    static const WCHAR winxpW[] = {'W','i','n','d','o','w','s',' ','X','P',' ','P','r','o','f','e','s','s','i','o','n','a','l',0};
    static const WCHAR szOSLocalized[] = {'s','z','O','S','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szOSExLocalized[] = {'s','z','O','S','E','x','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szOSExLongLocalized[] = {'s','z','O','S','E','x','L','o','n','g','L','o','c','a','l','i','z','e','d',0};
    static const WCHAR szOSEnglish[] = {'s','z','O','S','E','n','g','l','i','s','h',0};
    static const WCHAR szOSExEnglish[] = {'s','z','O','S','E','x','E','n','g','l','i','s','h',0};
    static const WCHAR szOSExLongEnglish[] = {'s','z','O','S','E','x','L','o','n','g','E','n','g','l','i','s','h',0};

    static const WCHAR *prop_list[] = {szOSLocalized, szOSExLocalized, szOSExLongLocalized,
                                       szOSEnglish, szOSExEnglish, szOSExLongEnglish};

    size_t i;
    HRESULT hr;



    for (i = 0; i < ARRAY_SIZE(prop_list); i++)
    {
        hr = add_bstr_property(node, prop_list[i], winxpW);
        if (FAILED(hr))
            return hr;
    }

    return S_OK;
}
