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
typedef  int WCHAR ;
typedef  int UINT ;
typedef  char* PBYTE ;
typedef  int INT ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FALSE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IDS_ASCIIDIFF ; 
 int /*<<< orphan*/  IDS_BADSYNTAX ; 
 int /*<<< orphan*/  IDS_COMPARING ; 
 int /*<<< orphan*/  IDS_FILEERROR ; 
 int /*<<< orphan*/  IDS_FILESIZEERROR ; 
 int /*<<< orphan*/  IDS_HELP ; 
 int /*<<< orphan*/  IDS_HEXADECIMALDIFF ; 
 int /*<<< orphan*/  IDS_INVALIDSWITCH ; 
 int /*<<< orphan*/  IDS_MATCH ; 
 int /*<<< orphan*/  IDS_MISMATCHLINE ; 
 int /*<<< orphan*/  IDS_MISMATCHOFFSET ; 
 int /*<<< orphan*/  IDS_READERROR ; 
 int /*<<< orphan*/  IDS_SIZEDIFFERS ; 
 int /*<<< orphan*/  STRBUF ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  _MAX_PATH ; 
 int /*<<< orphan*/ * FUNC6 (int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int*,int /*<<< orphan*/ ) ; 

int FUNC14(int argc, WCHAR* argv[])
{
    INT i;

    /* File pointers */
    FILE *fp1 = NULL;
    FILE *fp2 = NULL;

    INT BufLen1, BufLen2;
    PBYTE Buff1 = NULL;
    PBYTE Buff2 = NULL;
    WCHAR File1[_MAX_PATH + 1], // File paths
          File2[_MAX_PATH + 1];
    BOOL bAscii = FALSE,        // /A switch
         bLineNos = FALSE;      // /L switch
    UINT LineNumber;
    UINT Offset;
    INT  FileSizeFile1;
    INT  FileSizeFile2;
    INT  NumberOfOptions = 0;
    INT  FilesOK = 1;
    INT  Status = EXIT_SUCCESS;

    /* Initialize the Console Standard Streams */
    FUNC0();

    /* Parse command line for options */
    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            switch (FUNC12(argv[i][1]))
            {
                case L'a':
                    bAscii = TRUE;
                    NumberOfOptions++;
                    break;

                case L'l':
                    bLineNos = TRUE;
                    NumberOfOptions++;
                    break;

                case L'?':
                    FUNC3(StdOut, IDS_HELP);
                    return EXIT_SUCCESS;

                default:
                    FUNC2(StdErr, IDS_INVALIDSWITCH, argv[i][1]);
                    FUNC3(StdOut, IDS_HELP);
                    return EXIT_FAILURE;
            }
        }
    }

    if (argc - NumberOfOptions == 3)
    {
        FUNC13(File1, argv[1 + NumberOfOptions], _MAX_PATH);
        FUNC13(File2, argv[2 + NumberOfOptions], _MAX_PATH);
    }
    else
    {
        FUNC3(StdErr, IDS_BADSYNTAX);
        return EXIT_FAILURE;
    }

    Buff1 = (PBYTE)FUNC11(STRBUF);
    if (Buff1 == NULL)
    {
        FUNC1(StdErr, L"Can't get free memory for Buff1\n");
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    Buff2 = (PBYTE)FUNC11(STRBUF);
    if (Buff2 == NULL)
    {
        FUNC1(StdErr, L"Can't get free memory for Buff2\n");
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    if ((fp1 = FUNC6(File1, L"rb")) == NULL)
    {
        FUNC2(StdErr, IDS_FILEERROR, File1);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }
    if ((fp2 = FUNC6(File2, L"rb")) == NULL)
    {
        FUNC2(StdErr, IDS_FILEERROR, File2);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    FUNC2(StdOut, IDS_COMPARING, File1, File2);

    FileSizeFile1 = FUNC4(fp1);
    if (FileSizeFile1 == -1)
    {
        FUNC2(StdErr, IDS_FILESIZEERROR, File1);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    FileSizeFile2 = FUNC4(fp2);
    if (FileSizeFile2 == -1)
    {
        FUNC2(StdErr, IDS_FILESIZEERROR, File2);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    if (FileSizeFile1 != FileSizeFile2)
    {
        FUNC3(StdOut, IDS_SIZEDIFFERS);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    LineNumber = 1;
    Offset = 0;
    while (1)
    {
        BufLen1 = FUNC5(Buff1, fp1);
        BufLen2 = FUNC5(Buff2, fp2);

        if (FUNC9(fp1) || FUNC9(fp2))
        {
            FUNC3(StdErr, IDS_READERROR);
            Status = EXIT_FAILURE;
            goto Cleanup;
        }

        if (!BufLen1 && !BufLen2)
            break;

        FUNC7(BufLen1 == BufLen2);
        for (i = 0; i < BufLen1; i++)
        {
            if (Buff1[i] != Buff2[i])
            {
                FilesOK = 0;

                /* Reporting here a mismatch */
                if (bLineNos)
                    FUNC2(StdOut, IDS_MISMATCHLINE, LineNumber);
                else
                    FUNC2(StdOut, IDS_MISMATCHOFFSET, Offset);

                if (bAscii)
                {
                    FUNC2(StdOut, IDS_ASCIIDIFF, 1, Buff1[i]);
                    FUNC2(StdOut, IDS_ASCIIDIFF, 2, Buff2[i]);
                }
                else
                {
                    FUNC2(StdOut, IDS_HEXADECIMALDIFF, 1, Buff1[i]);
                    FUNC2(StdOut, IDS_HEXADECIMALDIFF, 2, Buff2[i]);
                }
            }

            Offset++;

            if (Buff1[i] == '\n')
                LineNumber++;
        }
    }

    if (FilesOK)
        FUNC3(StdOut, IDS_MATCH);

Cleanup:
    if (fp2)
        FUNC8(fp2);
    if (fp1)
        FUNC8(fp1);

    if (Buff2)
        FUNC10(Buff2);
    if (Buff1)
        FUNC10(Buff1);

    return Status;
}