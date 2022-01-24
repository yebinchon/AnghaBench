#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  char* LPSTR ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LOG_FILE ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  szFilePath ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC15(SOCKET sock)
{
    HANDLE hFile;
    WCHAR szFullPath[MAX_PATH + 20];
    DWORD dwBytesRead;
    LPSTR lpQuotes;
    LPSTR lpStr;
    INT quoteNum;
    INT NumQuotes = 0;
    INT i;

    if(!FUNC5(szFullPath, MAX_PATH))
    {
        FUNC9(L"QOTD: Getting system path failed", FUNC3(), 0, LOG_FILE);
        return FALSE;
    }
    FUNC14(szFullPath, szFilePath);


    FUNC9(L"QOTD: Opening quotes file", 0, 0, LOG_FILE);
    hFile = FUNC1(szFullPath,
                        GENERIC_READ,
                        0,
                        NULL,
                        OPEN_EXISTING,
                        FILE_ATTRIBUTE_NORMAL,
                        NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        FUNC9(L"QOTD: Error opening quotes file", FUNC3(), 0, LOG_FILE);
    }
    else
    {
        DWORD dwSize = FUNC2(hFile, NULL);
        lpQuotes = (LPSTR)FUNC7(FUNC4(), 0, dwSize + 1);
        if (!lpQuotes) 
        {
            FUNC0(hFile);
            return FALSE;
        }

        FUNC10(hFile,
                 lpQuotes,
                 dwSize,
                 &dwBytesRead,
                 NULL);
        FUNC0(hFile);

        lpQuotes[dwSize] = 0;

        if (dwBytesRead != dwSize)
        {
            FUNC8(FUNC4(), 0, lpQuotes);
            return FALSE;
        }

        lpStr = lpQuotes;
        while (*lpStr)
        {
            if (*lpStr == '%')
                NumQuotes++;
            lpStr++;
        }

        /* pick a random quote */
        FUNC13((unsigned int) FUNC6());
        quoteNum = FUNC12() % NumQuotes;

        /* retrieve the full quote */
        lpStr = lpQuotes;
        for (i = 1; i <= quoteNum; i++)
        {
            /* move past preceding quote */
            lpStr++;

            if (i == quoteNum)
            {
                LPSTR lpStart = lpStr;

                while (*lpStr != '%' && *lpStr != '\0')
                    lpStr++;

                *lpStr = 0;

                /* send the quote */
                if (!FUNC11(sock, lpStart))
                    FUNC9(L"QOTD: Error sending data", 0, 0, LOG_FILE);
                break;
            }
            else
            {
                while (*lpStr != '%' && *lpStr != '\0')
                    lpStr++;

                /* move past % and RN */
                lpStr += 2;
            }
        }

        FUNC8(FUNC4(), 0, lpQuotes);
        return TRUE;
    }

    return FALSE;
}