#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  int ULONG ;
struct TYPE_5__ {int usrmod0_force_logoff; int usrmod0_min_passwd_len; int usrmod0_max_passwd_age; int usrmod0_min_passwd_age; int usrmod0_password_hist_len; int usrmod3_lockout_threshold; int usrmod3_lockout_duration; int usrmod3_lockout_observation_window; scalar_t__ usrmod1_role; } ;
typedef  TYPE_1__* PUSER_MODALS_INFO_3 ;
typedef  TYPE_1__* PUSER_MODALS_INFO_1 ;
typedef  TYPE_1__* PUSER_MODALS_INFO_0 ;
typedef  scalar_t__ NT_PRODUCT_TYPE ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MSG_ACCOUNTS_HELP ; 
 int /*<<< orphan*/  MSG_ACCOUNTS_SYNTAX ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NtProductLanManNt ; 
 scalar_t__ NtProductServer ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 int TIMEQ_FOREVER ; 
 scalar_t__ TRUE ; 
 scalar_t__ UAS_ROLE_PRIMARY ; 
 int ULONG_MAX ; 
 scalar_t__ FUNC10 (scalar_t__*,char*) ; 
 scalar_t__ FUNC11 (scalar_t__*,char*,int) ; 
 scalar_t__ FUNC12 (scalar_t__*,char*) ; 
 int FUNC13 (scalar_t__*,scalar_t__**,int) ; 

INT
FUNC14(
    INT argc,
    WCHAR **argv)
{
    PUSER_MODALS_INFO_0 Info0 = NULL;
    PUSER_MODALS_INFO_1 Info1 = NULL;
    PUSER_MODALS_INFO_3 Info3 = NULL;
    NT_PRODUCT_TYPE ProductType;
    LPWSTR p;
    LPWSTR endptr;
    DWORD ParamErr;
    ULONG value;
    INT i;
    BOOL Modified = FALSE;
#if 0
    BOOL Domain = FALSE;
#endif
    INT nPaddedLength = 58;
    NET_API_STATUS Status;
    INT result = 0;

    for (i = 2; i < argc; i++)
    {
        if (FUNC10(argv[i], L"help") == 0)
        {
            /* Print short syntax help */
            FUNC5(4381);
            FUNC1(StdOut, L"\n");
            FUNC7(MSG_ACCOUNTS_SYNTAX);
            return 0;
        }

        if (FUNC10(argv[i], L"/help") == 0)
        {
            /* Print full help text*/
            FUNC5(4381);
            FUNC1(StdOut, L"\n");
            FUNC7(MSG_ACCOUNTS_SYNTAX);
            FUNC7(MSG_ACCOUNTS_HELP);
            return 0;
        }

        if (FUNC10(argv[i], L"/domain") == 0)
        {
            FUNC1(StdErr, L"The /DOMAIN option is not supported yet.\n");
#if 0
            Domain = TRUE;
#endif
        }
    }

    Status = FUNC3(NULL, 0, (LPBYTE*)&Info0);
    if (Status != NERR_Success)
        goto done;

    for (i = 2; i < argc; i++)
    {
        if (FUNC11(argv[i], L"/forcelogoff:", 13) == 0)
        {
            p = &argv[i][13];
            if (FUNC12(p, L"no") == 0)
            {
                Info0->usrmod0_force_logoff = TIMEQ_FOREVER;
                Modified = TRUE;
            }
            else
            {
                value = FUNC13(p, &endptr, 10);
                if (*endptr != 0)
                {
                    FUNC6(3952, L"/FORCELOGOFF");
                    result = 1;
                    goto done;
                }

                Info0->usrmod0_force_logoff = value * 60;
                Modified = TRUE;
            }
        }
        else if (FUNC11(argv[i], L"/minpwlen:", 10) == 0)
        {
            p = &argv[i][10];
            value = FUNC13(p, &endptr, 10);
            if (*endptr != 0)
            {
                FUNC6(3952, L"/MINPWLEN");
                result = 1;
                goto done;
            }

            Info0->usrmod0_min_passwd_len = value;
            Modified = TRUE;
        }
        else if (FUNC11(argv[i], L"/maxpwage:", 10) == 0)
        {
            p = &argv[i][10];

            if (FUNC12(p, L"unlimited"))
            {
                Info0->usrmod0_max_passwd_age = ULONG_MAX;
                Modified = TRUE;
            }
            else
            {
                value = FUNC13(p, &endptr, 10);
                if (*endptr != 0)
                {
                    FUNC6(3952, L"/MAXPWLEN");
                    result = 1;
                    goto done;
                }

                Info0->usrmod0_max_passwd_age = value * 86400;
                Modified = TRUE;
            }
        }
        else if (FUNC11(argv[i], L"/minpwage:", 10) == 0)
        {
            p = &argv[i][10];
            value = FUNC13(p, &endptr, 10);
            if (*endptr != 0)
            {
                FUNC6(3952, L"/MINPWAGE");
                result = 1;
                goto done;
            }

            Info0->usrmod0_min_passwd_age = value * 86400;
            Modified = TRUE;
        }
        else if (FUNC11(argv[i], L"/uniquepw:", 10) == 0)
        {
            p = &argv[i][10];
            value = FUNC13(p, &endptr, 10);
            if (*endptr != 0)
            {
                FUNC6(3952, L"/UNIQUEPW");
                result = 1;
                goto done;
            }

            Info0->usrmod0_password_hist_len = value;
            Modified = TRUE;
        }
    }

    if (Modified == TRUE)
    {
        Status = FUNC4(NULL, 0, (LPBYTE)Info0, &ParamErr);
        if (Status != NERR_Success)
            goto done;
    }
    else
    {
        Status = FUNC3(NULL, 1, (LPBYTE*)&Info1);
        if (Status != NERR_Success)
            goto done;

        Status = FUNC3(NULL, 3, (LPBYTE*)&Info3);
        if (Status != NERR_Success)
            goto done;

        FUNC9(&ProductType);

        FUNC8(4570, nPaddedLength);
        if (Info0->usrmod0_force_logoff == TIMEQ_FOREVER)
            FUNC5(4305);
        else
            FUNC0(StdOut, L"%lu", Info0->usrmod0_force_logoff);
        FUNC1(StdOut, L"\n");

        FUNC8(4572, nPaddedLength);
        FUNC0(StdOut, L"%lu\n", Info0->usrmod0_min_passwd_age / 86400);

        FUNC8(4573, nPaddedLength);
        FUNC0(StdOut, L"%lu\n", Info0->usrmod0_max_passwd_age / 86400);

        FUNC8(4574, nPaddedLength);
        FUNC0(StdOut, L"%lu\n", Info0->usrmod0_min_passwd_len);

        FUNC8(4575, nPaddedLength);
        if (Info0->usrmod0_password_hist_len == 0)
            FUNC5(4303);
        else
            FUNC0(StdOut, L"%lu", Info0->usrmod0_password_hist_len);
        FUNC1(StdOut, L"\n");

        FUNC8(4578, nPaddedLength);
        if (Info3->usrmod3_lockout_threshold == 0)
            FUNC5(4305);
        else
            FUNC0(StdOut, L"%lu", Info3->usrmod3_lockout_threshold);
        FUNC1(StdOut, L"\n");

        FUNC8(4579, nPaddedLength);
        FUNC0(StdOut, L"%lu\n", Info3->usrmod3_lockout_duration / 60);

        FUNC8(4580, nPaddedLength);
        FUNC0(StdOut, L"%lu\n", Info3->usrmod3_lockout_observation_window / 60);

        FUNC8(4576, nPaddedLength);
        if (Info1->usrmod1_role == UAS_ROLE_PRIMARY)
        {
            if (ProductType == NtProductLanManNt)
            {
                FUNC5(5070);
            }
            else if (ProductType == NtProductServer)
            {
                FUNC5(5073);
            }
            else
            {
                FUNC5(5072);
            }
        }
        else
        {
            FUNC5(5071);
        }
        FUNC1(StdOut, L"\n");
    }

done:
    if (Info3 != NULL)
        FUNC2(Info3);

    if (Info1 != NULL)
        FUNC2(Info1);

    if (Info0 != NULL)
        FUNC2(Info0);

    return result;
}