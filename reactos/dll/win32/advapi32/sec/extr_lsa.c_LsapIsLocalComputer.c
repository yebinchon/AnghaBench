
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ Length; char* Buffer; } ;
typedef TYPE_1__* PLSA_UNICODE_STRING ;
typedef int LPWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int GetComputerNameW (int ,int*) ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int ) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int TRUE ;
 int lstrcmpW (char*,int ) ;

__attribute__((used)) static
BOOL
LsapIsLocalComputer(PLSA_UNICODE_STRING ServerName)
{
    DWORD dwSize = MAX_COMPUTERNAME_LENGTH + 1;
    BOOL Result;
    LPWSTR buf;

    if (ServerName == ((void*)0) || ServerName->Length == 0 || ServerName->Buffer == ((void*)0))
        return TRUE;

    buf = HeapAlloc(GetProcessHeap(), 0, dwSize * sizeof(WCHAR));
    Result = GetComputerNameW(buf, &dwSize);
    if (Result && (ServerName->Buffer[0] == '\\') && (ServerName->Buffer[1] == '\\'))
        ServerName += 2;
    Result = Result && !lstrcmpW(ServerName->Buffer, buf);
    HeapFree(GetProcessHeap(), 0, buf);

    return Result;
}
