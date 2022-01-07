
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int data ;
typedef int WCHAR ;
typedef scalar_t__ HKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int RegQueryValueExW (scalar_t__,int const*,int ,int*,int *,int*) ;
 int TRUE ;

__attribute__((used)) static BOOL get_config_key_as_dword(HKEY hkey, const WCHAR *name, DWORD *value)
{
    DWORD type, data, size;

    size = sizeof(data);
    if (hkey && !RegQueryValueExW(hkey, name, 0, &type, (BYTE *)&data, &size))
    {
        *value = data;
        return TRUE;
    }

    return FALSE;
}
