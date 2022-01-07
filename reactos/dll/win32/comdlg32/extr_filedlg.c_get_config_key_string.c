
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ REG_EXPAND_SZ ;
 scalar_t__ REG_SZ ;
 scalar_t__ RegQueryValueExW (scalar_t__,int const*,int ,scalar_t__*,int *,scalar_t__*) ;
 int TRUE ;
 int * heap_alloc (scalar_t__) ;
 int heap_free (int *) ;

__attribute__((used)) static BOOL get_config_key_string(HKEY hkey, const WCHAR *name, WCHAR **value)
{
    DWORD type, size;
    WCHAR *str;

    if (hkey && !RegQueryValueExW(hkey, name, 0, &type, ((void*)0), &size))
    {
        if (type != REG_SZ && type != REG_EXPAND_SZ)
            return FALSE;
    }

    str = heap_alloc(size);
    if (RegQueryValueExW(hkey, name, 0, &type, (BYTE *)str, &size))
    {
        heap_free(str);
        return FALSE;
    }

    *value = str;
    return TRUE;
}
