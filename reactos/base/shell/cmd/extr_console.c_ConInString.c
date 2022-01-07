
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TCHAR ;
typedef int PVOID ;
typedef scalar_t__* PCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int GetConsoleMode (int ,int*) ;
 int GetStdHandle (int ) ;
 int InputCodePage ;
 int MultiByteToWideChar (int ,int ,scalar_t__*,int,scalar_t__*,int) ;
 int ReadFile (int ,int ,int,int*,int *) ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (int ,int) ;
 int ZeroMemory (scalar_t__*,int) ;
 scalar_t__ _T (char) ;
 scalar_t__ cmd_alloc (int) ;
 int cmd_free (scalar_t__*) ;

VOID ConInString(LPTSTR lpInput, DWORD dwLength)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;

    LPTSTR p;
    PCHAR pBuf;




    pBuf = lpInput;

    ZeroMemory(lpInput, dwLength * sizeof(TCHAR));
    hFile = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(hFile, &dwOldMode);

    SetConsoleMode(hFile, ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT);

    ReadFile(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, ((void*)0));





    for (p = lpInput; *p; p++)
    {
        if (*p == _T('\x0d'))
        {
            *p = _T('\0');
            break;
        }
    }

    SetConsoleMode(hFile, dwOldMode);
}
