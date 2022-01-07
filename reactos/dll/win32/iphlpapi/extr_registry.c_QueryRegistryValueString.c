
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PWCHAR ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int DbgPrint (char*,int *,scalar_t__,scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int * QueryRegistryValue (int ,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ REG_SZ ;
 int * TerminateReadString (int *,scalar_t__) ;

PWCHAR QueryRegistryValueString( HANDLE RegHandle, PWCHAR ValueName )
{
    PWCHAR String, TerminatedString;
    DWORD Type, Length;

    String = QueryRegistryValue(RegHandle, ValueName, &Type, &Length);
    if (!String) return ((void*)0);
    if (Type != REG_SZ)
    {
        DbgPrint("Type mismatch for %S (%d != %d)\n", ValueName, Type, REG_SZ);


    }

    TerminatedString = TerminateReadString(String, Length);
    HeapFree(GetProcessHeap(), 0, String);
    if (!TerminatedString) return ((void*)0);

    return TerminatedString;
}
