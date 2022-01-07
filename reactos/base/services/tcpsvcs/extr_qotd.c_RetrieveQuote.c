
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SOCKET ;
typedef char* LPSTR ;
typedef int INT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int GetSystemDirectoryW (int *,int ) ;
 scalar_t__ GetTickCount () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOG_FILE ;
 int LogEvent (char*,int ,int ,int ) ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int ReadFile (scalar_t__,char*,int,int*,int *) ;
 int SendQuote (int ,char*) ;
 int TRUE ;
 int rand () ;
 int srand (unsigned int) ;
 int szFilePath ;
 int wcscat (int *,int ) ;

__attribute__((used)) static BOOL
RetrieveQuote(SOCKET sock)
{
    HANDLE hFile;
    WCHAR szFullPath[MAX_PATH + 20];
    DWORD dwBytesRead;
    LPSTR lpQuotes;
    LPSTR lpStr;
    INT quoteNum;
    INT NumQuotes = 0;
    INT i;

    if(!GetSystemDirectoryW(szFullPath, MAX_PATH))
    {
        LogEvent(L"QOTD: Getting system path failed", GetLastError(), 0, LOG_FILE);
        return FALSE;
    }
    wcscat(szFullPath, szFilePath);


    LogEvent(L"QOTD: Opening quotes file", 0, 0, LOG_FILE);
    hFile = CreateFileW(szFullPath,
                        GENERIC_READ,
                        0,
                        ((void*)0),
                        OPEN_EXISTING,
                        FILE_ATTRIBUTE_NORMAL,
                        ((void*)0));
    if (hFile == INVALID_HANDLE_VALUE)
    {
        LogEvent(L"QOTD: Error opening quotes file", GetLastError(), 0, LOG_FILE);
    }
    else
    {
        DWORD dwSize = GetFileSize(hFile, ((void*)0));
        lpQuotes = (LPSTR)HeapAlloc(GetProcessHeap(), 0, dwSize + 1);
        if (!lpQuotes)
        {
            CloseHandle(hFile);
            return FALSE;
        }

        ReadFile(hFile,
                 lpQuotes,
                 dwSize,
                 &dwBytesRead,
                 ((void*)0));
        CloseHandle(hFile);

        lpQuotes[dwSize] = 0;

        if (dwBytesRead != dwSize)
        {
            HeapFree(GetProcessHeap(), 0, lpQuotes);
            return FALSE;
        }

        lpStr = lpQuotes;
        while (*lpStr)
        {
            if (*lpStr == '%')
                NumQuotes++;
            lpStr++;
        }


        srand((unsigned int) GetTickCount());
        quoteNum = rand() % NumQuotes;


        lpStr = lpQuotes;
        for (i = 1; i <= quoteNum; i++)
        {

            lpStr++;

            if (i == quoteNum)
            {
                LPSTR lpStart = lpStr;

                while (*lpStr != '%' && *lpStr != '\0')
                    lpStr++;

                *lpStr = 0;


                if (!SendQuote(sock, lpStart))
                    LogEvent(L"QOTD: Error sending data", 0, 0, LOG_FILE);
                break;
            }
            else
            {
                while (*lpStr != '%' && *lpStr != '\0')
                    lpStr++;


                lpStr += 2;
            }
        }

        HeapFree(GetProcessHeap(), 0, lpQuotes);
        return TRUE;
    }

    return FALSE;
}
