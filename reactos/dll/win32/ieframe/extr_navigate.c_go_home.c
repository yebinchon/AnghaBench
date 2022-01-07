
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszPageName ;
typedef char WCHAR ;
typedef int LPBYTE ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DocHost ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int MAX_PATH ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,char const*,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,scalar_t__*,int ,scalar_t__*) ;
 int navigate_url (int *,char const*,int *,int *,int *,int *) ;

HRESULT go_home(DocHost *This)
{
    HKEY hkey;
    DWORD res, type, size;
    WCHAR wszPageName[MAX_PATH];
    static const WCHAR wszAboutBlank[] = {'a','b','o','u','t',':','b','l','a','n','k',0};
    static const WCHAR wszStartPage[] = {'S','t','a','r','t',' ','P','a','g','e',0};
    static const WCHAR wszSubKey[] = {'S','o','f','t','w','a','r','e','\\',
                                      'M','i','c','r','o','s','o','f','t','\\',
                                      'I','n','t','e','r','n','e','t',' ','E','x','p','l','o','r','e','r','\\',
                                      'M','a','i','n',0};

    res = RegOpenKeyW(HKEY_CURRENT_USER, wszSubKey, &hkey);
    if (res != ERROR_SUCCESS)
        return navigate_url(This, wszAboutBlank, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    size = sizeof(wszPageName);
    res = RegQueryValueExW(hkey, wszStartPage, ((void*)0), &type, (LPBYTE)wszPageName, &size);
    RegCloseKey(hkey);
    if (res != ERROR_SUCCESS || type != REG_SZ)
        return navigate_url(This, wszAboutBlank, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    return navigate_url(This, wszPageName, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
