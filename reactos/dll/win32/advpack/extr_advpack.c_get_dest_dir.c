
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* PWSTR ;
typedef int PCWSTR ;
typedef int LPBYTE ;
typedef int INFCONTEXT ;
typedef int * HKEY ;
typedef int HINF ;
typedef int DWORD ;


 int * HKEY_CURRENT_USER ;
 int * HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 int PREFIX_LEN ;
 int RegCloseKey (int *) ;
 scalar_t__ RegOpenKeyW (int *,char*,int **) ;
 scalar_t__ RegQueryValueExW (int *,char*,int *,int *,int ,int*) ;
 int SetupFindFirstLineW (int ,int ,int *,int *) ;
 int SetupGetStringFieldW (int *,int,char*,int,int*) ;
 int lstrcmpW (char*,char const*) ;
 int strip_quotes (char*,int*) ;

__attribute__((used)) static void get_dest_dir(HINF hInf, PCWSTR pszSection, PWSTR pszBuffer, DWORD dwSize)
{
    INFCONTEXT context;
    WCHAR key[MAX_PATH + 2], value[MAX_PATH + 2];
    WCHAR prefix[PREFIX_LEN + 2];
    HKEY root, subkey = 0;
    DWORD size;

    static const WCHAR hklm[] = {'H','K','L','M',0};
    static const WCHAR hkcu[] = {'H','K','C','U',0};


    SetupFindFirstLineW(hInf, pszSection, ((void*)0), &context);
    SetupGetStringFieldW(&context, 1, prefix, PREFIX_LEN + 2, &size);
    strip_quotes(prefix, &size);
    SetupGetStringFieldW(&context, 2, key, MAX_PATH + 2, &size);
    strip_quotes(key, &size);
    SetupGetStringFieldW(&context, 3, value, MAX_PATH + 2, &size);
    strip_quotes(value, &size);

    if (!lstrcmpW(prefix, hklm))
        root = HKEY_LOCAL_MACHINE;
    else if (!lstrcmpW(prefix, hkcu))
        root = HKEY_CURRENT_USER;
    else
        root = ((void*)0);

    size = dwSize * sizeof(WCHAR);


    if (RegOpenKeyW(root, key, &subkey) ||
        RegQueryValueExW(subkey, value, ((void*)0), ((void*)0), (LPBYTE)pszBuffer, &size))
    {
        SetupGetStringFieldW(&context, 5, pszBuffer, dwSize, &size);
        strip_quotes(pszBuffer, &size);
    }

    if (subkey) RegCloseKey(subkey);
}
