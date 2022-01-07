
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* PWCHAR ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int DbgPrint (char*,scalar_t__*,scalar_t__,scalar_t__) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__* QueryRegistryValue (int ,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ REG_MULTI_SZ ;
 scalar_t__* TerminateReadString (scalar_t__*,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;

PWCHAR *QueryRegistryValueStringMulti( HANDLE RegHandle, PWCHAR ValueName ) {
    PWCHAR String, TerminatedString, Tmp;
    PWCHAR *Table;
    DWORD Type, Length, i, j;

    String = QueryRegistryValue(RegHandle, ValueName, &Type, &Length);
    if (!String) return ((void*)0);
    if (Type != REG_MULTI_SZ)
    {
        DbgPrint("Type mismatch for %S (%d != %d)\n", ValueName, Type, REG_MULTI_SZ);


    }

    TerminatedString = TerminateReadString(String, Length);
    HeapFree(GetProcessHeap(), 0, String);
    if (!TerminatedString) return ((void*)0);

    for (Tmp = TerminatedString, i = 0; *Tmp; Tmp++, i++) while (*Tmp) Tmp++;

    Table = HeapAlloc(GetProcessHeap(), 0, (i + 1) * sizeof(PWCHAR));
    if (!Table)
    {
        HeapFree(GetProcessHeap(), 0, TerminatedString);
        return ((void*)0);
    }

    for (Tmp = TerminatedString, j = 0; *Tmp; Tmp++, j++)
    {
        PWCHAR Orig = Tmp;

        for (i = 0; *Tmp; i++, Tmp++);

        Table[j] = HeapAlloc(GetProcessHeap(), 0, i * sizeof(WCHAR));
        memcpy(Table[j], Orig, i * sizeof(WCHAR));
    }

    Table[j] = ((void*)0);

    HeapFree(GetProcessHeap(), 0, TerminatedString);

    return Table;
}
