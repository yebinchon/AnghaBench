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
typedef  int* PWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int FUNC5 (int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDS_FOLDER_PATH ; 
 int /*<<< orphan*/  IDS_NO_SUBDIRECTORIES ; 
 int /*<<< orphan*/  IDS_USAGE ; 
 int /*<<< orphan*/  IDS_VOL_SERIAL ; 
 scalar_t__ FUNC8 (int*) ; 
 int /*<<< orphan*/  StdOut ; 
 void* TRUE ; 
 void* bShowFiles ; 
 void* bUseAscii ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int*,char*) ; 

int FUNC14(int argc, WCHAR* argv[])
{
    DWORD dwSerial = 0;
    WCHAR t = 0;
    PWSTR strPath = NULL;
    DWORD sz = 0;
    //PWSTR context = NULL;
    PWSTR driveLetter = NULL;

    int i;

    /* Initialize the Console Standard Streams */
    FUNC0();

    /* Parse the command line */
    for (i = 1; i < argc; ++i)
    {
        if (argv[i][0] == L'-' || argv[i][0] == L'/')
        {
            switch (FUNC11(argv[i][1]))
            {
                case L'?':
                    /* Print help and exit after */
                    FUNC4(StdOut, IDS_USAGE);
                    return 0;

                case L'f':
                    bShowFiles = TRUE;
                    break;

                case L'a':
                    bUseAscii = TRUE;
                    break;

                default:
                    break;
            }
        }
        else
        {
            /* This must be path to some folder */

            /* Set the current directory for this executable */
            BOOL b = FUNC8(argv[i]);
            if (b == FALSE)
            {
                FUNC4(StdOut, IDS_NO_SUBDIRECTORIES);
                return 1;
            }
        }
    }

    FUNC4(StdOut, IDS_FOLDER_PATH);

    FUNC7(NULL, NULL, 0, &dwSerial, NULL, NULL, NULL, 0);
    FUNC3(StdOut, IDS_VOL_SERIAL, dwSerial >> 16, dwSerial & 0xffff);

    /* get the buffer size */
    sz = FUNC5(1, &t);
    /* must not return before calling delete[] */
    strPath = (PWSTR)FUNC10(sz * sizeof(WCHAR));

    /* get the current directory */
    FUNC5(sz, strPath);

    /* get the drive letter , must not return before calling delete[] */
    driveLetter = (PWSTR)FUNC10(sz * sizeof(WCHAR));

    /* As we do not seem to have the _s functions properly set up, use the non-secure version for now */
    //wcscpy_s(driveLetter,sz,strPath);
    //wcstok_s(driveLetter,L":", &context); //parse for the drive letter
    FUNC12(driveLetter, strPath);
    FUNC13(driveLetter, L":");

    FUNC1(StdOut, L"%s:.\n", driveLetter);

    FUNC9(driveLetter);

    /* get the sub-directories within this current folder */
    FUNC6(strPath, 1, L"          ");

    FUNC9(strPath);
    FUNC2(StdOut, L"\n");

    return 0;
}