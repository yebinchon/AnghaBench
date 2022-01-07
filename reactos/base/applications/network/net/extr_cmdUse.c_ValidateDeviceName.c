
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int iswalpha (int) ;
 int wcslen (int*) ;

__attribute__((used)) static
BOOL
ValidateDeviceName(PWSTR DevName)
{
    DWORD Len;

    Len = wcslen(DevName);
    if (Len != 2)
    {
        return FALSE;
    }

    if (!iswalpha(DevName[0]) || DevName[1] != L':')
    {
        return FALSE;
    }

    return TRUE;
}
