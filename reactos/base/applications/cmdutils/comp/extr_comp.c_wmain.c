
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef char* PBYTE ;
typedef int INT ;
typedef int FILE ;
typedef scalar_t__ BOOL ;


 int ConInitStdStreams () ;
 int ConPuts (int ,char*) ;
 int ConResPrintf (int ,int ,...) ;
 int ConResPuts (int ,int ) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ FALSE ;
 int FileSize (int *) ;
 int GetBuff (char*,int *) ;
 int IDS_ASCIIDIFF ;
 int IDS_BADSYNTAX ;
 int IDS_COMPARING ;
 int IDS_FILEERROR ;
 int IDS_FILESIZEERROR ;
 int IDS_HELP ;
 int IDS_HEXADECIMALDIFF ;
 int IDS_INVALIDSWITCH ;
 int IDS_MATCH ;
 int IDS_MISMATCHLINE ;
 int IDS_MISMATCHOFFSET ;
 int IDS_READERROR ;
 int IDS_SIZEDIFFERS ;
 int STRBUF ;
 int StdErr ;
 int StdOut ;
 scalar_t__ TRUE ;
 int _MAX_PATH ;
 int * _wfopen (int*,char*) ;
 int assert (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int towlower (int) ;
 int wcsncpy (int*,int*,int ) ;

int wmain(int argc, WCHAR* argv[])
{
    INT i;


    FILE *fp1 = ((void*)0);
    FILE *fp2 = ((void*)0);

    INT BufLen1, BufLen2;
    PBYTE Buff1 = ((void*)0);
    PBYTE Buff2 = ((void*)0);
    WCHAR File1[_MAX_PATH + 1],
          File2[_MAX_PATH + 1];
    BOOL bAscii = FALSE,
         bLineNos = FALSE;
    UINT LineNumber;
    UINT Offset;
    INT FileSizeFile1;
    INT FileSizeFile2;
    INT NumberOfOptions = 0;
    INT FilesOK = 1;
    INT Status = EXIT_SUCCESS;


    ConInitStdStreams();


    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == L'/')
        {
            switch (towlower(argv[i][1]))
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
                    ConResPuts(StdOut, IDS_HELP);
                    return EXIT_SUCCESS;

                default:
                    ConResPrintf(StdErr, IDS_INVALIDSWITCH, argv[i][1]);
                    ConResPuts(StdOut, IDS_HELP);
                    return EXIT_FAILURE;
            }
        }
    }

    if (argc - NumberOfOptions == 3)
    {
        wcsncpy(File1, argv[1 + NumberOfOptions], _MAX_PATH);
        wcsncpy(File2, argv[2 + NumberOfOptions], _MAX_PATH);
    }
    else
    {
        ConResPuts(StdErr, IDS_BADSYNTAX);
        return EXIT_FAILURE;
    }

    Buff1 = (PBYTE)malloc(STRBUF);
    if (Buff1 == ((void*)0))
    {
        ConPuts(StdErr, L"Can't get free memory for Buff1\n");
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    Buff2 = (PBYTE)malloc(STRBUF);
    if (Buff2 == ((void*)0))
    {
        ConPuts(StdErr, L"Can't get free memory for Buff2\n");
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    if ((fp1 = _wfopen(File1, L"rb")) == ((void*)0))
    {
        ConResPrintf(StdErr, IDS_FILEERROR, File1);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }
    if ((fp2 = _wfopen(File2, L"rb")) == ((void*)0))
    {
        ConResPrintf(StdErr, IDS_FILEERROR, File2);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    ConResPrintf(StdOut, IDS_COMPARING, File1, File2);

    FileSizeFile1 = FileSize(fp1);
    if (FileSizeFile1 == -1)
    {
        ConResPrintf(StdErr, IDS_FILESIZEERROR, File1);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    FileSizeFile2 = FileSize(fp2);
    if (FileSizeFile2 == -1)
    {
        ConResPrintf(StdErr, IDS_FILESIZEERROR, File2);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    if (FileSizeFile1 != FileSizeFile2)
    {
        ConResPuts(StdOut, IDS_SIZEDIFFERS);
        Status = EXIT_FAILURE;
        goto Cleanup;
    }

    LineNumber = 1;
    Offset = 0;
    while (1)
    {
        BufLen1 = GetBuff(Buff1, fp1);
        BufLen2 = GetBuff(Buff2, fp2);

        if (ferror(fp1) || ferror(fp2))
        {
            ConResPuts(StdErr, IDS_READERROR);
            Status = EXIT_FAILURE;
            goto Cleanup;
        }

        if (!BufLen1 && !BufLen2)
            break;

        assert(BufLen1 == BufLen2);
        for (i = 0; i < BufLen1; i++)
        {
            if (Buff1[i] != Buff2[i])
            {
                FilesOK = 0;


                if (bLineNos)
                    ConResPrintf(StdOut, IDS_MISMATCHLINE, LineNumber);
                else
                    ConResPrintf(StdOut, IDS_MISMATCHOFFSET, Offset);

                if (bAscii)
                {
                    ConResPrintf(StdOut, IDS_ASCIIDIFF, 1, Buff1[i]);
                    ConResPrintf(StdOut, IDS_ASCIIDIFF, 2, Buff2[i]);
                }
                else
                {
                    ConResPrintf(StdOut, IDS_HEXADECIMALDIFF, 1, Buff1[i]);
                    ConResPrintf(StdOut, IDS_HEXADECIMALDIFF, 2, Buff2[i]);
                }
            }

            Offset++;

            if (Buff1[i] == '\n')
                LineNumber++;
        }
    }

    if (FilesOK)
        ConResPuts(StdOut, IDS_MATCH);

Cleanup:
    if (fp2)
        fclose(fp2);
    if (fp1)
        fclose(fp1);

    if (Buff2)
        free(Buff2);
    if (Buff1)
        free(Buff1);

    return Status;
}
