
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SIZE_T ;
typedef int* PWSTR ;
typedef int* PCWSTR ;
typedef int INT ;


 int ConInitStdStreams () ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,int*) ;
 int ConResPuts (int ,int ) ;
 int EnumerateDevices () ;
 int* FindPortNum (int*,int*) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int IDS_ERROR_INVALID_PARAMETER ;
 int IDS_USAGE ;
 int SetConsoleCPState (int*) ;
 int SetConsoleState (int*) ;
 int SetConsoleStateOld (int*) ;
 int SetSerialState (int,int*) ;
 int ShowConsoleCPStatus () ;
 int ShowConsoleStatus () ;
 int ShowParallelStatus (int) ;
 int ShowSerialStatus (int) ;
 int StdErr ;
 int StdOut ;
 scalar_t__ _wcsnicmp (int*,char*,int) ;
 int wcscpy (int*,int *) ;
 scalar_t__ wcslen (int *) ;
 scalar_t__ wcsstr (int*,char*) ;

int wmain(int argc, WCHAR* argv[])
{
    int ret = 0;
    int arg;
    SIZE_T ArgStrSize;
    PCWSTR ArgStr, argStr;

    INT nPortNum;


    ConInitStdStreams();
    ArgStrSize = 0;


    for (arg = 1; arg < argc; arg++)
    {
        ArgStrSize += wcslen(argv[arg]) + 1;
    }
    ArgStr = HeapAlloc(GetProcessHeap(), 0, (ArgStrSize + 1) * sizeof(WCHAR));
    if (ArgStr == ((void*)0))
    {
        ConPuts(StdErr, L"ERROR: Not enough memory\n");
        return 1;
    }


    argStr = ArgStr;
    for (arg = 1; arg < argc; arg++)
    {
        wcscpy((PWSTR)argStr, argv[arg]);
        argStr += wcslen(argv[arg]);
        *(PWSTR)argStr++ = L' ';
    }
    *(PWSTR)argStr = L'\0';


    argStr = ArgStr;

    while (*argStr == L' ') argStr++;
    if (!*argStr) goto show_status;

    if (wcsstr(argStr, L"/?") || wcsstr(argStr, L"-?"))
    {
        ConResPuts(StdOut, IDS_USAGE);
        goto Quit;
    }
    else if (_wcsnicmp(argStr, L"/STA", 4) == 0)
    {

        while (*argStr != L' ') argStr++;

        while (*argStr == L' ') argStr++;


        if (*argStr)
            goto invalid_parameter;

        goto show_status;
    }
    else if (_wcsnicmp(argStr, L"LPT", 3) == 0)
    {
        argStr = FindPortNum(argStr+3, &nPortNum);
        if (!argStr || nPortNum == -1)
            goto invalid_parameter;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || _wcsnicmp(argStr, L"/STA", 4) == 0)
            ret = ShowParallelStatus(nPortNum);
        else
            ConPuts(StdErr, L"ERROR: LPT port redirection is not implemented!\n");

        goto Quit;
    }
    else if (_wcsnicmp(argStr, L"COM", 3) == 0)
    {
        argStr = FindPortNum(argStr+3, &nPortNum);
        if (!argStr || nPortNum == -1)
            goto invalid_parameter;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || _wcsnicmp(argStr, L"/STA", 4) == 0)
            ret = ShowSerialStatus(nPortNum);
        else
            ret = SetSerialState(nPortNum, argStr);
        goto Quit;
    }
    else if (_wcsnicmp(argStr, L"CON", 3) == 0)
    {
        argStr += 3;

        if (*argStr == L':') argStr++;
        while (*argStr == L' ') argStr++;

        if (!*argStr || _wcsnicmp(argStr, L"/STA", 4) == 0)
        {
            ret = ShowConsoleStatus();
        }
        else if ( (_wcsnicmp(argStr, L"CP", 2) == 0 && (argStr += 2)) ||
                  (_wcsnicmp(argStr, L"CODEPAGE", 8) == 0 && (argStr += 8)) )
        {
            while (*argStr == L' ') argStr++;

            if (!*argStr || _wcsnicmp(argStr, L"/STA", 4) == 0)
                ret = ShowConsoleCPStatus();
            else
                ret = SetConsoleCPState(argStr);
        }
        else
        {
            ret = SetConsoleState(argStr);
        }
        goto Quit;
    }

    else
    {

        ret = SetConsoleStateOld(argStr);
        goto Quit;
    }

show_status:
    EnumerateDevices();
    goto Quit;

invalid_parameter:
    ConResPrintf(StdErr, IDS_ERROR_INVALID_PARAMETER, ArgStr);
    goto Quit;

Quit:

    HeapFree(GetProcessHeap(), 0, (PWSTR)ArgStr);
    return ret;
}
