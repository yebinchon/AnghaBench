
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WCHAR ;
typedef int VOID ;
typedef int * PWSTR ;
typedef int LPWSTR ;
typedef char* DWORD ;


 int ConPrintf (int ,char*,int *) ;
 char* ERROR_SUCCESS ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageW (int,int ,...) ;
 int LANG_USER_DEFAULT ;
 int LocalFree (int *) ;
 char* MAX_LANMAN_MESSAGE_ID ;
 char* MIN_LANMAN_MESSAGE_ID ;
 int StdErr ;
 int hModuleNetMsg ;
 int swprintf (int *,char*,char*) ;

VOID
PrintErrorMessage(
    DWORD dwError)
{
    WCHAR szErrorBuffer[16];
    PWSTR pBuffer;
    PWSTR pErrorInserts[2] = {((void*)0), ((void*)0)};

    if (dwError >= MIN_LANMAN_MESSAGE_ID && dwError <= MAX_LANMAN_MESSAGE_ID)
    {
        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       hModuleNetMsg,
                       dwError,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&pBuffer,
                       0,
                       ((void*)0));
        if (pBuffer)
        {
            ConPrintf(StdErr, L"%s\n", pBuffer);
            LocalFree(pBuffer);
            pBuffer = ((void*)0);
        }
    }
    else
    {
        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM |
                       FORMAT_MESSAGE_IGNORE_INSERTS,
                       ((void*)0),
                       dwError,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&pBuffer,
                       0,
                       ((void*)0));
        if (pBuffer)
        {
            ConPrintf(StdErr, L"%s\n", pBuffer);
            LocalFree(pBuffer);
            pBuffer = ((void*)0);
        }
    }

    if (dwError != ERROR_SUCCESS)
    {

        swprintf(szErrorBuffer, L"%lu", dwError);
        pErrorInserts[0] = szErrorBuffer;


        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_ARGUMENT_ARRAY,
                       hModuleNetMsg,
                       3514,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&pBuffer,
                       0,
                       (va_list *)pErrorInserts);
        if (pBuffer)
        {
            ConPrintf(StdErr, L"%s\n", pBuffer);
            LocalFree(pBuffer);
            pBuffer = ((void*)0);
        }
    }
}
