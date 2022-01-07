
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int WCHAR ;
typedef char* PWSTR ;
typedef int LPWSTR ;
typedef scalar_t__ LONG ;
typedef int INT ;


 int ConPrintf (int ,char*,char*) ;
 int ConPuts (int ,char*) ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,scalar_t__,int ,int ,int ,int *) ;
 int LANG_USER_DEFAULT ;
 int LocalFree (char*) ;
 scalar_t__ MAX_LANMAN_MESSAGE_ID ;
 scalar_t__ MIN_LANMAN_MESSAGE_ID ;
 int MSG_HELPMSG_HELP ;
 int MSG_HELPMSG_SYNTAX ;
 int PrintErrorMessage (int) ;
 int PrintMessageString (int) ;
 int PrintNetMessage (int ) ;
 int StdOut ;
 scalar_t__ _wcsicmp (int *,char*) ;
 int * hModuleNetMsg ;
 scalar_t__ wcstol (int *,char**,int) ;

INT cmdHelpMsg(INT argc, WCHAR **argv)
{
    INT i;
    LONG errNum;
    PWSTR endptr;
    PWSTR pBuffer;
    PWSTR pInserts[10] = {L"***", L"***", L"***", L"***",
                          L"***", L"***", L"***", L"***",
                          L"***", ((void*)0)};

    if (argc < 3)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_HELPMSG_SYNTAX);
        return 1;
    }

    for (i = 2; i < argc; i++)
    {
        if (_wcsicmp(argv[i], L"/help") == 0)
        {
            PrintMessageString(4381);
            ConPuts(StdOut, L"\n");
            PrintNetMessage(MSG_HELPMSG_SYNTAX);
            PrintNetMessage(MSG_HELPMSG_HELP);
            return 1;
        }
    }

    errNum = wcstol(argv[2], &endptr, 10);
    if (*endptr != 0)
    {
        PrintMessageString(4381);
        ConPuts(StdOut, L"\n");
        PrintNetMessage(MSG_HELPMSG_SYNTAX);
        return 1;
    }

    if (errNum >= MIN_LANMAN_MESSAGE_ID && errNum <= MAX_LANMAN_MESSAGE_ID)
    {
        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_HMODULE |
                       FORMAT_MESSAGE_ARGUMENT_ARRAY,
                       hModuleNetMsg,
                       errNum,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&pBuffer,
                       0,
                       (va_list *)pInserts);
        if (pBuffer)
        {
            ConPrintf(StdOut, L"\n%s\n", pBuffer);
            LocalFree(pBuffer);
        }
        else
        {
            PrintErrorMessage(3871);
        }
    }
    else
    {

        FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM |
                       FORMAT_MESSAGE_ARGUMENT_ARRAY,
                       ((void*)0),
                       errNum,
                       LANG_USER_DEFAULT,
                       (LPWSTR)&pBuffer,
                       0,
                       (va_list *)pInserts);
        if (pBuffer)
        {
            ConPrintf(StdOut, L"\n%s\n", pBuffer);
            LocalFree(pBuffer);
        }
        else
        {
            PrintErrorMessage(3871);
        }
    }

    return 0;
}
