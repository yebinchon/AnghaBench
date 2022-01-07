
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keying ;
typedef char WCHAR ;
typedef int LPCOLESTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int GUID ;
typedef int DWORD ;


 int CLSIDFromString (char*,int *) ;
 int E_FAIL ;
 int E_POINTER ;
 int KEY_READ ;
 char* PathFindExtensionW (int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int *,int ,int*) ;
 int S_OK ;
 int mediatype_name ;
 int source_filter_name ;
 int subtype_name ;

__attribute__((used)) static HRESULT process_extensions(HKEY hkeyExtensions, LPCOLESTR pszFileName, GUID * majorType, GUID * minorType, GUID * sourceFilter)
{
    WCHAR *extension;
    LONG l;
    HKEY hsub;
    WCHAR keying[39];
    DWORD size;

    if (!pszFileName)
        return E_POINTER;


    extension = PathFindExtensionW(pszFileName);
    if (*extension != '.')
        return E_FAIL;

    l = RegOpenKeyExW(hkeyExtensions, extension, 0, KEY_READ, &hsub);
    if (l)
        return E_FAIL;

    if (majorType)
    {
        size = sizeof(keying);
        l = RegQueryValueExW(hsub, mediatype_name, ((void*)0), ((void*)0), (LPBYTE)keying, &size);
        if (!l)
            CLSIDFromString(keying, majorType);
    }

    if (minorType)
    {
        size = sizeof(keying);
        if (!l)
            l = RegQueryValueExW(hsub, subtype_name, ((void*)0), ((void*)0), (LPBYTE)keying, &size);
        if (!l)
            CLSIDFromString(keying, minorType);
    }

    if (sourceFilter)
    {
        size = sizeof(keying);
        if (!l)
            l = RegQueryValueExW(hsub, source_filter_name, ((void*)0), ((void*)0), (LPBYTE)keying, &size);
        if (!l)
            CLSIDFromString(keying, sourceFilter);
    }

    RegCloseKey(hsub);

    if (!l)
        return S_OK;
    return E_FAIL;
}
