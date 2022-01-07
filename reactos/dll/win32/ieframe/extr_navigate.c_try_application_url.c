
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int exec_info ;
typedef unsigned char WCHAR ;
struct TYPE_4__ {int cbSize; int nShow; int lpFile; } ;
typedef TYPE_1__ SHELLEXECUTEINFOW ;
typedef int LPCWSTR ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (unsigned char*) ;
 int CoInternetParseUrl (int ,int ,int ,unsigned char*,int ,int *,int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int HKEY_CLASSES_ROOT ;
 int PARSE_SCHEMA ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,unsigned char*,int *) ;
 scalar_t__ RegQueryValueExW (int ,unsigned char const*,int *,scalar_t__*,int *,int *) ;
 int SW_SHOW ;
 int ShellExecuteExW (TYPE_1__*) ;
 int TRACE (char*,int ) ;
 int debugstr_w (unsigned char*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL try_application_url(LPCWSTR url)
{
    SHELLEXECUTEINFOW exec_info;
    WCHAR app[64];
    HKEY hkey;
    DWORD res, type;
    HRESULT hres;

    static const WCHAR wszURLProtocol[] = {'U','R','L',' ','P','r','o','t','o','c','o','l',0};

    hres = CoInternetParseUrl(url, PARSE_SCHEMA, 0, app, ARRAY_SIZE(app), ((void*)0), 0);
    if(FAILED(hres))
        return FALSE;

    res = RegOpenKeyW(HKEY_CLASSES_ROOT, app, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    res = RegQueryValueExW(hkey, wszURLProtocol, ((void*)0), &type, ((void*)0), ((void*)0));
    RegCloseKey(hkey);
    if(res != ERROR_SUCCESS || type != REG_SZ)
        return FALSE;

    TRACE("opening application %s\n", debugstr_w(app));

    memset(&exec_info, 0, sizeof(exec_info));
    exec_info.cbSize = sizeof(exec_info);
    exec_info.lpFile = url;
    exec_info.nShow = SW_SHOW;

    return ShellExecuteExW(&exec_info);
}
