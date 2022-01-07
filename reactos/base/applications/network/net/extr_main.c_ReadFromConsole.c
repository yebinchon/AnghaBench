
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef int PVOID ;
typedef scalar_t__ PCHAR ;
typedef int* LPWSTR ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CP_OEMCP ;
 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int GetConsoleMode (int ,int*) ;
 int GetProcessHeap () ;
 int GetStdHandle (int ) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int*,int) ;
 int ReadFile (int ,int ,int,int*,int *) ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (int ,int) ;
 int ZeroMemory (int*,int) ;

VOID
ReadFromConsole(
    LPWSTR lpInput,
    DWORD dwLength,
    BOOL bEcho)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;
    LPWSTR p;
    PCHAR pBuf;

    pBuf = HeapAlloc(GetProcessHeap(), 0, dwLength - 1);
    ZeroMemory(lpInput, dwLength * sizeof(WCHAR));
    hFile = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(hFile, &dwOldMode);

    SetConsoleMode(hFile, ENABLE_LINE_INPUT | (bEcho ? ENABLE_ECHO_INPUT : 0));

    ReadFile(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, ((void*)0));

    MultiByteToWideChar(CP_OEMCP, 0, pBuf, dwRead, lpInput, dwLength - 1);
    HeapFree(GetProcessHeap(), 0, pBuf);

    for (p = lpInput; *p; p++)
    {
        if (*p == L'\x0d')
        {
            *p = L'\0';
            break;
        }
    }

    SetConsoleMode(hFile, dwOldMode);
}
