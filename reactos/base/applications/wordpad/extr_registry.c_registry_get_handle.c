
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef scalar_t__ LPDWORD ;
typedef char* LPCWSTR ;
typedef int LONG ;
typedef int HKEY ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int HKEY_CURRENT_USER ;
 int HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int ) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCreateKeyExW (int ,int ,int ,int *,int ,int,int *,int *,scalar_t__) ;
 int RegOpenKeyExW (int ,int ,int ,int,int *) ;
 int lstrcatW (int ,char*) ;
 int lstrcpyW (int ,char const*) ;
 int lstrlenW (char const*) ;

__attribute__((used)) static LRESULT registry_get_handle(HKEY *hKey, LPDWORD action, LPCWSTR subKey)
{
    LONG ret;
    static const WCHAR wszProgramKey[] = {'S','o','f','t','w','a','r','e','\\',
        'M','i','c','r','o','s','o','f','t','\\',
        'W','i','n','d','o','w','s','\\',
        'C','u','r','r','e','n','t','V','e','r','s','i','o','n','\\',
        'A','p','p','l','e','t','s','\\',
        'W','o','r','d','p','a','d',0};
        LPWSTR key = (LPWSTR)wszProgramKey;

        if(subKey)
        {
            WCHAR backslash[] = {'\\',0};
            key = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY,
                            (lstrlenW(wszProgramKey)+lstrlenW(subKey)+lstrlenW(backslash)+1)
                                    *sizeof(WCHAR));

            if(!key)
                return 1;

            lstrcpyW(key, wszProgramKey);
            lstrcatW(key, backslash);
            lstrcatW(key, subKey);
        }

        if(action)
        {
            ret = RegCreateKeyExW(HKEY_CURRENT_USER, key, 0, ((void*)0), REG_OPTION_NON_VOLATILE,
                                  KEY_READ | KEY_WRITE, ((void*)0), hKey, action);
        } else
        {
            ret = RegOpenKeyExW(HKEY_CURRENT_USER, key, 0, KEY_READ | KEY_WRITE, hKey);
        }

        if(subKey)
            HeapFree(GetProcessHeap(), 0, key);

        return ret;
}
