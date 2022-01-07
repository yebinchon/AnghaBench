
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PVOID ;
typedef scalar_t__ PCHAR ;
typedef int* LPWSTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ENABLE_ECHO_INPUT ;
 int ENABLE_LINE_INPUT ;
 int GetConsoleCP () ;
 int GetConsoleMode (int ,int*) ;
 int GetProcessHeap () ;
 int GetStdHandle (int ) ;
 int HEAP_ZERO_MEMORY ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int*,int) ;
 int ReadFile (int ,int ,int,int*,int *) ;
 int STD_INPUT_HANDLE ;
 int SetConsoleMode (int ,int) ;
 int UNICODE_NULL ;

__attribute__((used)) static
VOID
ConInString(LPWSTR lpInput, DWORD dwLength)
{
    DWORD dwOldMode;
    DWORD dwRead = 0;
    HANDLE hFile;
    LPWSTR p;
    PCHAR pBuf;

    pBuf = (PCHAR)HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, dwLength - 1);

    hFile = GetStdHandle(STD_INPUT_HANDLE);
    GetConsoleMode(hFile, &dwOldMode);

    SetConsoleMode(hFile, ENABLE_LINE_INPUT | ENABLE_ECHO_INPUT);

    ReadFile(hFile, (PVOID)pBuf, dwLength - 1, &dwRead, ((void*)0));

    MultiByteToWideChar(GetConsoleCP(), 0, pBuf, dwRead, lpInput, dwLength - 1);
    HeapFree(GetProcessHeap(), 0, pBuf);

    for (p = lpInput; *p; p++)
    {
        if (*p == L'\x0d')
        {
            *p = UNICODE_NULL;
            break;
        }
    }

    SetConsoleMode(hFile, dwOldMode);
}
