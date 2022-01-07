
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int WCHAR ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ REG_DWORD ;
 int RegQueryValueExW (scalar_t__,int const*,int ,scalar_t__*,int *,scalar_t__*) ;
 int TRUE ;

__attribute__((used)) static BOOL get_config_key_dword(HKEY hkey, const WCHAR *name, DWORD *value)
{
    DWORD type, data, size;

    size = sizeof(data);
    if (hkey && !RegQueryValueExW(hkey, name, 0, &type, (BYTE *)&data, &size) && type == REG_DWORD)
    {
        *value = data;
        return TRUE;
    }

    return FALSE;
}
