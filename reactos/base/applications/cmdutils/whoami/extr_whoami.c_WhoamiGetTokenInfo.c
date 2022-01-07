
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int TOKEN_INFORMATION_CLASS ;
typedef int * LPVOID ;
typedef int HANDLE ;
typedef int DWORD ;


 int CloseHandle (int ) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetTokenInformation (int ,int ,int *,int ,int *) ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int ) ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int TOKEN_READ ;
 int WhoamiFree (int *) ;
 int exit (int) ;
 int wprintf (char*,...) ;

VOID* WhoamiGetTokenInfo(TOKEN_INFORMATION_CLASS TokenType)
{
    HANDLE hToken = 0;
    DWORD dwLength = 0;
    VOID* pTokenInfo = 0;

    if (OpenProcessToken(GetCurrentProcess(), TOKEN_READ, &hToken))
    {
        GetTokenInformation(hToken,
                            TokenType,
                            ((void*)0),
                            dwLength,
                            &dwLength);

        if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
        {
            pTokenInfo = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, dwLength);
            if (pTokenInfo == ((void*)0))
            {
                wprintf(L"ERROR: not enough memory to allocate the token structure.\r\n");
                exit(1);
            }
        }

        if (!GetTokenInformation(hToken, TokenType,
                                 (LPVOID)pTokenInfo,
                                 dwLength,
                                 &dwLength))
        {
            wprintf(L"ERROR 0x%x: could not get token information.\r\n", GetLastError());
            WhoamiFree(pTokenInfo);
            exit(1);
        }

        CloseHandle(hToken);
    }

    return pTokenInfo;
}
