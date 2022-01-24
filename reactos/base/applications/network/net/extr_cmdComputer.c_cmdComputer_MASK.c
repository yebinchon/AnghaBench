#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_2__ {int* usri1_name; int* usri1_password; int usri1_flags; int /*<<< orphan*/ * usri1_script_path; int /*<<< orphan*/ * usri1_comment; int /*<<< orphan*/ * usri1_home_dir; int /*<<< orphan*/  usri1_priv; scalar_t__ usri1_password_age; } ;
typedef  TYPE_1__ USER_INFO_1 ;
typedef  int* PWSTR ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int LM20_PWLEN ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  MSG_COMPUTER_HELP ; 
 int /*<<< orphan*/  MSG_COMPUTER_SYNTAX ; 
 scalar_t__ NERR_Success ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TRUE ; 
 int UF_SCRIPT ; 
 int UF_WORKSTATION_TRUST_ACCOUNT ; 
 int UNICODE_NULL ; 
 int /*<<< orphan*/  USER_PRIV_USER ; 
 scalar_t__ FUNC6 (int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 

INT
FUNC11(
    INT argc,
    WCHAR **argv)
{
    WCHAR ComputerAccountName[MAX_PATH + 2];
    WCHAR ComputerPassword[LM20_PWLEN + 1];
    USER_INFO_1 UserInfo;
    INT i, result = 0;
    BOOL bAdd = FALSE;
    BOOL bDelete = FALSE;
    PWSTR pComputerName = NULL;
    NET_API_STATUS Status = NERR_Success;
/*
    OSVERSIONINFOEX VersionInfo;

    VersionInfo.dwOSVersionInfoSize = sizeof(VersionInfo);
    if (!GetVersionEx((LPOSVERSIONINFO)&VersionInfo))
    {
        PrintErrorMessage(GetLastError());
        return 1;
    }

    if (VersionInfo.wProductType != VER_NT_DOMAIN_CONTROLLER)
    {
        PrintErrorMessage(3515);
        return 1;
    }
*/

    i = 2;
    if (argc > 2 && argv[i][0] == L'\\' && argv[i][1] == L'\\')
    {
        pComputerName = argv[i];
        i++;
    }

    for (; i < argc; i++)
    {
        if (FUNC6(argv[i], L"help") == 0)
        {
            /* Print short syntax help */
            FUNC4(4381);
            FUNC0(StdOut, L"\n");
            FUNC5(MSG_COMPUTER_SYNTAX);
            return 0;
        }

        if (FUNC6(argv[i], L"/help") == 0)
        {
            /* Print full help text*/
            FUNC4(4381);
            FUNC0(StdOut, L"\n");
            FUNC5(MSG_COMPUTER_SYNTAX);
            FUNC5(MSG_COMPUTER_HELP);
            return 0;
        }

        if (FUNC6(argv[i], L"/add") == 0)
        {
            bAdd = TRUE;
            continue;
        }
        else if (FUNC6(argv[i], L"/del") == 0)
        {
            bDelete = TRUE;
            continue;
        }
        else
        {
            FUNC3(3506/*, argv[i]*/);
            return 1;
        }
    }

    if (pComputerName == NULL ||
        (bAdd == FALSE && bDelete == FALSE) ||
        (bAdd == TRUE && bDelete == TRUE))
    {
        FUNC4(4381);
        FUNC0(StdOut, L"\n");
        FUNC5(MSG_COMPUTER_SYNTAX);
        return 1;
    }

    /*
     * Create the computer account name:
     *  Skip the leading '\\' and appand a '$'.
     */
    FUNC9(ComputerAccountName, &pComputerName[2]);
    FUNC8(ComputerAccountName, L"$");

    if (bAdd)
    {
        /*
         * Create the computer password:
         *   Skip the leading '\\', shorten to a maximum of 14 characters
         *   and convert to lower case
         */
        FUNC10(ComputerPassword, &pComputerName[2], LM20_PWLEN);
        ComputerPassword[LM20_PWLEN] = UNICODE_NULL;
        FUNC7(ComputerPassword);

        /* Set the account data */
        UserInfo.usri1_name = ComputerAccountName;
        UserInfo.usri1_password = ComputerPassword;
        UserInfo.usri1_password_age = 0;
        UserInfo.usri1_priv = USER_PRIV_USER;
        UserInfo.usri1_home_dir = NULL;
        UserInfo.usri1_comment = NULL;
        UserInfo.usri1_flags = UF_SCRIPT | UF_WORKSTATION_TRUST_ACCOUNT;
        UserInfo.usri1_script_path = NULL;

        /* Add the computer account */
        Status = FUNC1(NULL,
                            1,
                            (LPBYTE)&UserInfo,
                            NULL);
    }
    else if (bDelete)
    {
        /* Delete the coputer account */
        Status = FUNC2(NULL,
                            ComputerAccountName);
    }

    if (Status == NERR_Success)
    {
        FUNC3(ERROR_SUCCESS);
    }
    else
    {
        FUNC3(Status);
        result = 1;
    }

    return result;
}