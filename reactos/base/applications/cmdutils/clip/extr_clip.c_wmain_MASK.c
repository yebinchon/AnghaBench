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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ LPBYTE ;
typedef  scalar_t__ HGLOBAL ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CF_OEMTEXT ; 
 int /*<<< orphan*/  CF_UNICODETEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FILE_TYPE_CHAR ; 
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  IDS_HELP ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC19(int argc, wchar_t** argv)
{
    HANDLE hInput;
    DWORD dwBytesRead;
    BOOL bStatus;
    HGLOBAL hBuffer;
    HGLOBAL hTemp;
    LPBYTE lpBuffer;
    SIZE_T dwSize = 0;

    /* Initialize the Console Standard Streams */
    hInput = FUNC6(STD_INPUT_HANDLE);
    FUNC1();

    /* Check for usage */
    if (argc > 1 && FUNC18(argv[1], L"/?", 2) == 0)
    {
        FUNC2(StdOut, IDS_HELP);
        return 0;
    }

    if (FUNC4(hInput) == FILE_TYPE_CHAR)
    {
        FUNC2(StdOut, IDS_USAGE);
        return 0;
    }

    /* Initialize a growable buffer for holding clipboard data */
    hBuffer = FUNC7(GMEM_MOVEABLE | GMEM_ZEROINIT, 4096);
    if (!hBuffer)
        goto Failure;

    /*
     * Read data from the input stream by chunks of 4096 bytes
     * and resize the buffer each time when needed.
     */
    do
    {
        lpBuffer = FUNC9(hBuffer);
        if (!lpBuffer)
            goto Failure;

        bStatus = FUNC16(hInput, lpBuffer + dwSize, 4096, &dwBytesRead, NULL);
        dwSize += dwBytesRead;
        FUNC12(hBuffer);

        hTemp = FUNC10(hBuffer, FUNC11(hBuffer) + 4096, GMEM_ZEROINIT);
        if (!hTemp)
            goto Failure;

        hBuffer = hTemp;
    }
    while (bStatus && dwBytesRead > 0);

    /*
     * Resize the buffer to the total size of data read.
     * Note that, if the call fails, we still have the old buffer valid.
     * The old buffer would be larger than the actual size of data it contains,
     * but this is not a problem for us.
     */
    hTemp = FUNC10(hBuffer, dwSize + sizeof(WCHAR), GMEM_ZEROINIT);
    if (hTemp)
        hBuffer = hTemp;

    /* Attempt to open the clipboard */
    if (!FUNC14(NULL))
        goto Failure;

    /* Empty it, copy our data, then close it */

    FUNC3();

    if (FUNC13(hBuffer))
    {
        FUNC17(CF_UNICODETEXT, hBuffer);
    }
    else
    {
        // TODO: Convert text from current console page to standard ANSI.
        // Alternatively one can use CF_OEMTEXT as done here.
        FUNC17(CF_OEMTEXT, hBuffer);
    }

    FUNC0();
    return 0;

Failure:
    if (hBuffer) FUNC8(hBuffer);
    FUNC15(FUNC5());
    return -1;
}