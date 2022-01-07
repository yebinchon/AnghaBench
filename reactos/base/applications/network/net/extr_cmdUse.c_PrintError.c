
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef int LPWSTR ;
typedef char* DWORD ;


 int ConPrintf (int ,char*,int ) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessage (int,int *,char*,int ,int ,int ,int *) ;
 int LocalFree (int ) ;
 int PrintMessageStringV (int,int *) ;
 int StdErr ;
 int swprintf (int *,char*,char*) ;

__attribute__((used)) static
VOID
PrintError(DWORD Status)
{
    WCHAR szStatusBuffer[16];
    LPWSTR Buffer;

    swprintf(szStatusBuffer, L"%lu", Status);
    PrintMessageStringV(3502, szStatusBuffer);

    if (FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0), Status, 0, (LPWSTR)&Buffer, 0, ((void*)0)))
    {
        ConPrintf(StdErr, L"\n%s", Buffer);
        LocalFree(Buffer);
    }
}
