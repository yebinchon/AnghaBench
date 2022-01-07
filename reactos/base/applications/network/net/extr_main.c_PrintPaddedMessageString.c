
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int * PWSTR ;
typedef int LPWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;


 int ConPuts (int ,int *) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessageW (int,int ,scalar_t__,int ,int ,int ,int *) ;
 int LANG_USER_DEFAULT ;
 int LocalFree (int *) ;
 int PrintPadding (int,scalar_t__) ;
 int StdOut ;
 int hModuleNetMsg ;

VOID
PrintPaddedMessageString(
    DWORD dwMessage,
    INT nPaddedLength)
{
    PWSTR pBuffer;
    DWORD dwLength;

    dwLength = FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
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

    if (dwLength < (DWORD)nPaddedLength)
        PrintPadding(L' ', (DWORD)nPaddedLength - dwLength);
}
