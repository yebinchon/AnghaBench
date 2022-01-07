
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PVOID ;
typedef scalar_t__ LSTATUS ;
typedef char* LPWSTR ;
typedef int HKEY ;
typedef int (* ENUM_INTERFACE_CALLBACK ) (int ,char*,int ) ;
typedef int DWORD ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int GetProcessHeap () ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,char*,int*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,char*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int *,int *,int *,int*,int*,int *,int *,int *,int *,int *,int *) ;

LSTATUS
EnumInterfaces(
    ENUM_INTERFACE_CALLBACK CallbackRoutine,
    PVOID InterfaceCallbackContext)
{
    HKEY hKey, hInterface;
    LSTATUS Status;
    DWORD NumInterfaces, InterfaceNameLen, Index, Length;
    LPWSTR InterfaceName;


    Status = RegOpenKeyExW(HKEY_LOCAL_MACHINE, L"SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces", 0, KEY_READ, &hKey);


    if (Status != ERROR_SUCCESS)
    {

        return Status;
    }


    Status = RegQueryInfoKeyW(hKey, ((void*)0), ((void*)0), ((void*)0), &NumInterfaces, &InterfaceNameLen, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    if (Status != ERROR_SUCCESS)
    {

        RegCloseKey(hKey);
        return Status;
    }


    InterfaceNameLen++;


    InterfaceName = (LPWSTR) HeapAlloc(GetProcessHeap(), 0, InterfaceNameLen * sizeof(WCHAR));

    if (!InterfaceName)
    {

        RegCloseKey(hKey);
        return ERROR_OUTOFMEMORY;
    }


    for(Index = 0; Index < NumInterfaces; Index++)
    {

        Length = InterfaceNameLen;
        Status = RegEnumKeyExW(hKey, Index, InterfaceName, &Length, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

        if (Status == ERROR_SUCCESS)
        {

            InterfaceName[Length] = L'\0';


            Status = RegOpenKeyExW(hKey, InterfaceName, 0, KEY_READ, &hInterface);

            if (Status == ERROR_SUCCESS)
            {

                CallbackRoutine(hInterface, InterfaceName, InterfaceCallbackContext);


                RegCloseKey(hInterface);
            }
        }
    }


    HeapFree(GetProcessHeap(), 0, InterfaceName);


    RegCloseKey(hKey);


    return Status;
}
