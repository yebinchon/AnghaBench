
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PWSTR ;
typedef int LPWSTR ;
typedef int DWORD ;


 int ConPuts (int ,int *) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int ,int ,int ,int ,int ,int *) ;
 int LANG_USER_DEFAULT ;
 int LocalFree (int *) ;
 int StdOut ;
 int hModuleNetMsg ;

VOID
PrintMessageString(
    DWORD dwMessage)
{
    PWSTR pBuffer;

    FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
                   FORMAT_MESSAGE_IGNORE_INSERTS,
                   hModuleNetMsg,
                   dwMessage,
                   LANG_USER_DEFAULT,
                   (LPWSTR)&pBuffer,
                   0,
                   ((void*)0));
    if (pBuffer)
    {
        ConPuts(StdOut, pBuffer);
        LocalFree(pBuffer);
        pBuffer = ((void*)0);
    }
}
