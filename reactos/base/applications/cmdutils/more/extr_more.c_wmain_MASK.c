#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  member_1; TYPE_1__* member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  member_0; } ;
typedef  char TCHAR ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ ENCODING ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ CON_SCREEN ;
typedef  TYPE_2__ CON_PAGER ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ENCODING_ANSI ; 
 scalar_t__ ENCODING_UTF16BE ; 
 scalar_t__ ENCODING_UTF16LE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FileCacheBufferSize ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_FILE_ACCESS ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  INVALID_CP ; 
 scalar_t__ INVALID_FILE_SIZE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PagePrompt ; 
 scalar_t__ FUNC19 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdIn ; 
 int /*<<< orphan*/  StdOut ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UTF8Text ; 
 scalar_t__ dwFileSize ; 
 scalar_t__ dwSumReadBytes ; 
 scalar_t__ dwSumReadChars ; 
 scalar_t__ hFile ; 
 scalar_t__ hKeyboard ; 
 scalar_t__ hStdIn ; 
 void* hStdOut ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,char*) ; 

int FUNC22(int argc, WCHAR* argv[])
{
    // FIXME this stuff!
    CON_SCREEN Screen = {StdOut};
    CON_PAGER Pager = {&Screen, 0};

    int i;

    BOOL bRet, bContinue;

    ENCODING Encoding;
    DWORD SkipBytes = 0;

#define FileCacheBufferSize 4096
    PVOID FileCacheBuffer = NULL;
    PWCHAR StringBuffer = NULL;
    DWORD StringBufferLength = 0;
    DWORD dwReadBytes, dwReadChars;

    TCHAR szFullPath[MAX_PATH];

    hStdIn = FUNC15(STD_INPUT_HANDLE);
    hStdOut = FUNC15(STD_OUTPUT_HANDLE);

    /* Initialize the Console Standard Streams */
    FUNC6(StdIn , FUNC15(STD_INPUT_HANDLE) , UTF8Text, INVALID_CP);
    FUNC6(StdOut, FUNC15(STD_OUTPUT_HANDLE), UTF8Text, INVALID_CP);
    FUNC6(StdErr, FUNC15(STD_ERROR_HANDLE) , UTF8Text, INVALID_CP);

    /*
     * Bad usage (too much options) or we use the /? switch.
     * Display help for the MORE command.
     */
    if (argc > 1 && FUNC21(argv[1], L"/?") == 0)
    {
        FUNC5(StdOut, IDS_USAGE);
        return 0;
    }

    // FIXME: Parse all the remaining parameters.
    // Then the file list can be found at the very end.
    // FIXME2: Use the PARSER api that can be found in EVENTCREATE.

    // NOTE: We might try to duplicate the ConOut for read access... ?
    hKeyboard = FUNC9(L"CONIN$", GENERIC_READ|GENERIC_WRITE,
                            FILE_SHARE_READ|FILE_SHARE_WRITE, NULL,
                            OPEN_EXISTING, 0, NULL);
    FUNC11(hKeyboard);
    FUNC7(StdIn, hKeyboard);


    FileCacheBuffer = FUNC16(FUNC14(), 0, FileCacheBufferSize);
    if (!FileCacheBuffer)
    {
        FUNC2(StdErr, L"Error: no memory\n");
        FUNC1(hKeyboard);
        return 1;
    }

    /* Special case where we run 'MORE' without any argument: we use STDIN */
    if (argc <= 1)
    {
        /*
         * Assign STDIN handle to hFile so that the page prompt function will
         * know the data comes from STDIN, and will take different actions.
         */
        hFile = hStdIn;

        /* Update the statistics for PagePrompt */
        dwFileSize = 0;
        dwSumReadBytes = dwSumReadChars = 0;

        /* We suppose we read text from the file */

        /* For STDIN we always suppose we are in ANSI mode */
        // SetFilePointer(hFile, 0, NULL, FILE_BEGIN);
        Encoding = ENCODING_ANSI; // ENCODING_UTF8;

        bContinue = FUNC3(&Pager, PagePrompt, TRUE, L"");
        if (!bContinue)
            goto Quit;

        do
        {
            bRet = FUNC10(hFile, Encoding,
                                 FileCacheBuffer, FileCacheBufferSize,
                                 &StringBuffer, &StringBufferLength,
                                 &dwReadBytes, &dwReadChars);
            if (!bRet || dwReadBytes == 0 || dwReadChars == 0)
            {
                /* We failed at reading the file, bail out */
                break;
            }

            /* Update the statistics for PagePrompt */
            dwSumReadBytes += dwReadBytes;
            dwSumReadChars += dwReadChars;

            bContinue = FUNC8(&Pager, PagePrompt, FALSE,
                                       StringBuffer, dwReadChars);
            /* If we Ctrl-C/Ctrl-Break, stop everything */
            if (!bContinue)
                goto Quit;
        }
        while (bRet && dwReadBytes > 0);
        goto Quit;
    }

    /* We have files: read them and output them to STDOUT */
    for (i = 1; i < argc; i++)
    {
        FUNC13(argv[i], FUNC0(szFullPath), szFullPath, NULL);
        hFile = FUNC9(szFullPath, 
                            GENERIC_READ,
                            FILE_SHARE_READ,
                            NULL,
                            OPEN_EXISTING,
                            0, // FILE_ATTRIBUTE_NORMAL,
                            NULL);
        if (hFile == INVALID_HANDLE_VALUE)
        {
            FUNC4(StdErr, IDS_FILE_ACCESS, szFullPath);
            continue;
        }

        /* We currently do not support files too big */
        dwFileSize = FUNC12(hFile, NULL);
        if (dwFileSize == INVALID_FILE_SIZE)
        {
            FUNC2(StdErr, L"ERROR: Invalid file size!\n");
            FUNC1(hFile);
            continue;
        }

        /* We suppose we read text from the file */

        /* Check whether the file is UNICODE and retrieve its encoding */
        FUNC20(hFile, 0, NULL, FILE_BEGIN);
        bRet = FUNC19(hFile, FileCacheBuffer, FileCacheBufferSize, &dwReadBytes, NULL);
        FUNC18(FileCacheBuffer, dwReadBytes, &Encoding, &SkipBytes);
        FUNC20(hFile, SkipBytes, NULL, FILE_BEGIN);

        /* Update the statistics for PagePrompt */
        dwSumReadBytes = dwSumReadChars = 0;

        bContinue = FUNC3(&Pager, PagePrompt, TRUE, L"");
        if (!bContinue)
        {
            FUNC1(hFile);
            goto Quit;
        }

        do
        {
            bRet = FUNC10(hFile, Encoding,
                                 FileCacheBuffer, FileCacheBufferSize,
                                 &StringBuffer, &StringBufferLength,
                                 &dwReadBytes, &dwReadChars);
            if (!bRet || dwReadBytes == 0 || dwReadChars == 0)
            {
                /*
                 * We failed at reading the file, bail out and
                 * continue with the other files.
                 */
                break;
            }

            /* Update the statistics for PagePrompt */
            dwSumReadBytes += dwReadBytes;
            dwSumReadChars += dwReadChars;

            if ((Encoding == ENCODING_UTF16LE) || (Encoding == ENCODING_UTF16BE))
            {
                bContinue = FUNC8(&Pager, PagePrompt, FALSE,
                                           FileCacheBuffer, dwReadChars);
            }
            else
            {
                bContinue = FUNC8(&Pager, PagePrompt, FALSE,
                                           StringBuffer, dwReadChars);
            }
            /* If we Ctrl-C/Ctrl-Break, stop everything */
            if (!bContinue)
            {
                FUNC1(hFile);
                goto Quit;
            }
        }
        while (bRet && dwReadBytes > 0);

        FUNC1(hFile);
    }

Quit:
    if (StringBuffer) FUNC17(FUNC14(), 0, StringBuffer);
    FUNC17(FUNC14(), 0, FileCacheBuffer);
    FUNC1(hKeyboard);
    return 0;
}