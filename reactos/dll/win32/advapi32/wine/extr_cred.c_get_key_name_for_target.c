
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wszGenericPrefix ;
typedef int wszDomPasswdPrefix ;
typedef char WCHAR ;
typedef char* LPWSTR ;
typedef char const* LPCWSTR ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 scalar_t__ CRED_TYPE_GENERIC ;
 char* heap_alloc (int) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char const*) ;
 int strlenW (char const*) ;

__attribute__((used)) static LPWSTR get_key_name_for_target(LPCWSTR target_name, DWORD type)
{
    static const WCHAR wszGenericPrefix[] = {'G','e','n','e','r','i','c',':',' ',0};
    static const WCHAR wszDomPasswdPrefix[] = {'D','o','m','P','a','s','s','w','d',':',' ',0};
    INT len;
    LPCWSTR prefix = ((void*)0);
    LPWSTR key_name, p;

    len = strlenW(target_name);
    if (type == CRED_TYPE_GENERIC)
    {
        prefix = wszGenericPrefix;
        len += sizeof(wszGenericPrefix)/sizeof(wszGenericPrefix[0]);
    }
    else
    {
        prefix = wszDomPasswdPrefix;
        len += sizeof(wszDomPasswdPrefix)/sizeof(wszDomPasswdPrefix[0]);
    }

    key_name = heap_alloc(len * sizeof(WCHAR));
    if (!key_name) return ((void*)0);

    strcpyW(key_name, prefix);
    strcatW(key_name, target_name);

    for (p = key_name; *p; p++)
        if (*p == '\\') *p = '_';

    return key_name;
}
