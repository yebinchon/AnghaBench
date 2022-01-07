
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWCHAR ;
typedef int * PVOID ;
typedef scalar_t__* LPDWORD ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_MORE_DATA ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ REG_NONE ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 scalar_t__ TRUE ;

PVOID QueryRegistryValue(HANDLE RegHandle, PWCHAR ValueName, LPDWORD RegistryType, LPDWORD Length)
{
    PVOID ReadValue = ((void*)0);
    DWORD Error;

    *Length = 0;
    *RegistryType = REG_NONE;

    while (TRUE)
    {
        Error = RegQueryValueExW(RegHandle, ValueName, ((void*)0), RegistryType, ReadValue, Length);
        if (Error == ERROR_SUCCESS)
        {
            if (ReadValue) break;
        }
        else if (Error == ERROR_MORE_DATA)
        {
            HeapFree(GetProcessHeap(), 0, ReadValue);
        }
        else break;

        ReadValue = HeapAlloc(GetProcessHeap(), 0, *Length);
        if (!ReadValue) return ((void*)0);
    }

    if (Error != ERROR_SUCCESS)
    {
        if (ReadValue) HeapFree(GetProcessHeap(), 0, ReadValue);

        *Length = 0;
        *RegistryType = REG_NONE;
        ReadValue = ((void*)0);
    }

    return ReadValue;
}
