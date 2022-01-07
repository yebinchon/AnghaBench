
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPWSTR ;
typedef char* LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int GetComputerNameW (int ,int*) ;
 int MAX_COMPUTERNAME_LENGTH ;
 int TRUE ;
 int heap_alloc (int) ;
 int heap_free (int ) ;
 int lstrcmpW (char*,int ) ;

BOOL ADVAPI_IsLocalComputer(LPCWSTR ServerName)
{
    DWORD dwSize = MAX_COMPUTERNAME_LENGTH + 1;
    BOOL Result;
    LPWSTR buf;

    if (!ServerName || !ServerName[0])
        return TRUE;

    buf = heap_alloc(dwSize * sizeof(WCHAR));
    Result = GetComputerNameW(buf, &dwSize);
    if (Result && (ServerName[0] == '\\') && (ServerName[1] == '\\'))
        ServerName += 2;
    Result = Result && !lstrcmpW(ServerName, buf);
    heap_free(buf);

    return Result;
}
