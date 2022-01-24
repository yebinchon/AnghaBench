#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int INT ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ FILETIME ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_INPUT ; 
 int /*<<< orphan*/  BUFF_SIZE ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int REPLACE_ADD ; 
 int REPLACE_CONFIRM ; 
 int REPLACE_UPDATE ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STRING_COPY_ERROR1 ; 
 int /*<<< orphan*/  STRING_COPY_ERROR3 ; 
 int /*<<< orphan*/  STRING_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  STRING_REPLACE_ERROR7 ; 
 int /*<<< orphan*/  STRING_REPLACE_HELP10 ; 
 int /*<<< orphan*/  STRING_REPLACE_HELP11 ; 
 int /*<<< orphan*/  STRING_REPLACE_HELP5 ; 
 int /*<<< orphan*/  STRING_REPLACE_HELP9 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int nErrorLevel ; 

INT FUNC20(TCHAR source[MAX_PATH], TCHAR dest[MAX_PATH], DWORD dwFlags, BOOL *doMore)
{
    TCHAR d[MAX_PATH];
    TCHAR s[MAX_PATH];
    HANDLE hFileSrc, hFileDest;
    DWORD  dwAttrib, dwRead, dwWritten;
    LPBYTE buffer;
    BOOL   bEof = FALSE;
    FILETIME srcCreationTime, destCreationTime, srcLastAccessTime, destLastAccessTime;
    FILETIME srcLastWriteTime, destLastWriteTime;
    FUNC10(source, s);
    FUNC10(dest, d);
    s[0] = FUNC19(s[0]);
    d[0] = FUNC19(d[0]);
    // ConOutPrintf(_T("old-src:  %s\n"), s);
    // ConOutPrintf(_T("old-dest: %s\n"), d);
    // ConOutPrintf(_T("src:  %s\n"), source);
    // ConOutPrintf(_T("dest: %s\n"), dest);

    /* Open up the sourcefile */
    hFileSrc = FUNC5 (source, GENERIC_READ, FILE_SHARE_READ,NULL, OPEN_EXISTING, 0, NULL);
    if (hFileSrc == INVALID_HANDLE_VALUE)
    {
        FUNC3(STRING_COPY_ERROR1, source);
        return 0;
    }

    /*
     * Get the time from source file to be used in the comparison
     * with dest time if update switch is set.
     */
    FUNC9 (hFileSrc, &srcCreationTime, &srcLastAccessTime, &srcLastWriteTime);

    /*
     * Retrieve the source attributes so that they later on
     * can be inserted in to the destination.
     */
    dwAttrib = FUNC8 (source);

    if (FUNC11 (dest))
    {
        /*
         * Resets the attributes to avoid problems with read only files,
         * checks for read only has been made earlier.
         */
        FUNC13(dest,FILE_ATTRIBUTE_NORMAL);
        /*
         * Is the update flas set? The time has to be controled so that
         * only older files are replaced.
         */
        if (dwFlags & REPLACE_UPDATE)
        {
            /* Read destination time */
            hFileDest = FUNC5(dest, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
                0, NULL);

            if (hFileDest == INVALID_HANDLE_VALUE)
            {
                FUNC3(STRING_COPY_ERROR1, dest);
                FUNC1 (hFileSrc);
                return 0;
            }

            /* Compare time */
            FUNC9 (hFileDest, &destCreationTime, &destLastAccessTime, &destLastWriteTime);
            if (!((srcLastWriteTime.dwHighDateTime > destLastWriteTime.dwHighDateTime) ||
                    (srcLastWriteTime.dwHighDateTime == destLastWriteTime.dwHighDateTime &&
                     srcLastWriteTime.dwLowDateTime > destLastWriteTime.dwLowDateTime)))
            {
                FUNC1 (hFileSrc);
                FUNC1 (hFileDest);
                return 0;
            }
            FUNC1 (hFileDest);
        }
        /* Delete the old file */
        FUNC6 (dest);
    }

    /* Check confirm flag, and take appropriate action */
    if (dwFlags & REPLACE_CONFIRM)
    {
        /* Output depending on add flag */
        if (dwFlags & REPLACE_ADD)
            FUNC3(STRING_REPLACE_HELP9, dest);
        else
            FUNC3(STRING_REPLACE_HELP10, dest);
        if ( !FUNC7 (0))
        {
            FUNC1 (hFileSrc);
            return 0;
        }
    }

    /* Output depending on add flag */
    if (dwFlags & REPLACE_ADD)
        FUNC3(STRING_REPLACE_HELP11, dest);
    else
        FUNC3(STRING_REPLACE_HELP5, dest);

    /* Make sure source and destination is not the same */
    if (!FUNC18(s, d))
    {
        FUNC2(TRUE, STRING_REPLACE_ERROR7);
        FUNC1 (hFileSrc);
        *doMore = FALSE;
        return 0;
    }

    /* Open destination file to write to */
    hFileDest = FUNC5 (dest, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    if (hFileDest == INVALID_HANDLE_VALUE)
    {
        FUNC1 (hFileSrc);
        FUNC2(TRUE, STRING_REPLACE_ERROR7);
        *doMore = FALSE;
        return 0;
    }

    /* Get buffer for the copy process */
    buffer = FUNC15(NULL, BUFF_SIZE, MEM_COMMIT, PAGE_READWRITE);
    if (buffer == NULL)
    {
        FUNC1 (hFileDest);
        FUNC1 (hFileSrc);
        FUNC2(TRUE, STRING_ERROR_OUT_OF_MEMORY);
        return 0;
    }

    /* Put attribute and time to the new destination file */
    FUNC13 (dest, dwAttrib);
    FUNC14 (hFileDest, &srcCreationTime, &srcLastAccessTime, &srcLastWriteTime);
    do
    {
        /* Read data from source */
        FUNC12 (hFileSrc, buffer, BUFF_SIZE, &dwRead, NULL);

        /* Done? */
        if (dwRead == 0)
            break;

        /* Write to destination file */
        FUNC17 (hFileDest, buffer, dwRead, &dwWritten, NULL);

        /* Done! or ctrl break! */
        if (dwWritten != dwRead || FUNC0(BREAK_INPUT))
        {
            FUNC4(STRING_COPY_ERROR3);
            FUNC16 (buffer, 0, MEM_RELEASE);
            FUNC1 (hFileDest);
            FUNC1 (hFileSrc);
            nErrorLevel = 1;
            return 0;
        }
    }
    while (!bEof);

    /* Return memory and close files */
    FUNC16 (buffer, 0, MEM_RELEASE);
    FUNC1 (hFileDest);
    FUNC1 (hFileSrc);

    /* Return one file replaced */
    return 1;
}