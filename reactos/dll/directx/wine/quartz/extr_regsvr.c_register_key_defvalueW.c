
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef int BYTE ;


 scalar_t__ ERROR_SUCCESS ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int const*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueExW (int ,int *,int ,int ,int const*,int) ;
 int lstrlenW (int const*) ;

__attribute__((used)) static LONG register_key_defvalueW(
    HKEY base,
    WCHAR const *name,
    WCHAR const *value)
{
    LONG res;
    HKEY key;

    res = RegCreateKeyExW(base, name, 0, ((void*)0), 0,
     KEY_READ | KEY_WRITE, ((void*)0), &key, ((void*)0));
    if (res != ERROR_SUCCESS) return res;
    res = RegSetValueExW(key, ((void*)0), 0, REG_SZ, (const BYTE*)value,
    (lstrlenW(value) + 1) * sizeof(WCHAR));
    RegCloseKey(key);
    return res;
}
