
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PWSTR ;
typedef int DWORD ;


 int ConPrintf (int ,char*,int *) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,int ,int ,int *,int ,int *) ;
 int LocalFree (int *) ;
 int StdErr ;

__attribute__((used)) static
VOID
PrintErrorMessage(
    DWORD dwError)
{
    PWSTR pszBuffer = ((void*)0);

    FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                   ((void*)0),
                   dwError,
                   0,
                   (PWSTR)&pszBuffer,
                   0,
                   ((void*)0));

    ConPrintf(StdErr, L"%s\n", pszBuffer);
    LocalFree(pszBuffer);
}
