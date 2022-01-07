
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PWCHAR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int UNICODE_NULL ;
 int memcpy (int *,int *,int) ;

PWCHAR TerminateReadString(PWCHAR String, DWORD Length)
{
    PWCHAR TerminatedString;

    TerminatedString = HeapAlloc(GetProcessHeap(), 0, Length + sizeof(WCHAR));
    if (TerminatedString == ((void*)0))
        return ((void*)0);

    memcpy(TerminatedString, String, Length);

    TerminatedString[Length / sizeof(WCHAR)] = UNICODE_NULL;

    return TerminatedString;
}
