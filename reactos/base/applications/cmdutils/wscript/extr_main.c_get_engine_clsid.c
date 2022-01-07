
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int CLSID ;
typedef int BOOL ;


 int ARRAY_SIZE (char*) ;
 int CLSIDFromProgID (char*,int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int HKEY_CLASSES_ROOT ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyW (int ,char const*,int *) ;
 scalar_t__ RegQueryValueW (int ,int *,char*,int *) ;
 int SUCCEEDED (int ) ;
 int WINE_TRACE (char*,int ) ;
 int strcatW (char*,char const*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static BOOL get_engine_clsid(const WCHAR *ext, CLSID *clsid)
{
    WCHAR fileid[64], progid[64];
    DWORD res;
    LONG size;
    HKEY hkey;
    HRESULT hres;

    static const WCHAR script_engineW[] =
        {'\\','S','c','r','i','p','t','E','n','g','i','n','e',0};

    res = RegOpenKeyW(HKEY_CLASSES_ROOT, ext, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    size = ARRAY_SIZE(fileid);
    res = RegQueryValueW(hkey, ((void*)0), fileid, &size);
    RegCloseKey(hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    WINE_TRACE("fileid is %s\n", wine_dbgstr_w(fileid));

    strcatW(fileid, script_engineW);
    res = RegOpenKeyW(HKEY_CLASSES_ROOT, fileid, &hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    size = ARRAY_SIZE(progid);
    res = RegQueryValueW(hkey, ((void*)0), progid, &size);
    RegCloseKey(hkey);
    if(res != ERROR_SUCCESS)
        return FALSE;

    WINE_TRACE("ProgID is %s\n", wine_dbgstr_w(progid));

    hres = CLSIDFromProgID(progid, clsid);
    return SUCCEEDED(hres);
}
