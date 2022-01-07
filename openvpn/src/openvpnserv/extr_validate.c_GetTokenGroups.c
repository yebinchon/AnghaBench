
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PTOKEN_GROUPS ;
typedef int HANDLE ;
typedef int DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetTokenInformation (int const,int ,int *,int ,int *) ;
 int M_SYSERR ;
 int MsgToEventLog (int ,char*) ;
 int TokenGroups ;
 int free (int *) ;
 int * malloc (int ) ;

__attribute__((used)) static PTOKEN_GROUPS
GetTokenGroups(const HANDLE token)
{
    PTOKEN_GROUPS groups = ((void*)0);
    DWORD buf_size = 0;

    if (!GetTokenInformation(token, TokenGroups, groups, buf_size, &buf_size)
        && GetLastError() == ERROR_INSUFFICIENT_BUFFER)
    {
        groups = malloc(buf_size);
    }
    if (!groups)
    {
        MsgToEventLog(M_SYSERR, L"GetTokenGroups");
    }
    else if (!GetTokenInformation(token, TokenGroups, groups, buf_size, &buf_size))
    {
        MsgToEventLog(M_SYSERR, L"GetTokenInformation");
        free(groups);
    }
    return groups;
}
