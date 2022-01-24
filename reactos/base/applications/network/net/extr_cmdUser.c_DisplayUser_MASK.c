#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int usri4_flags; scalar_t__ usri4_acct_expires; scalar_t__ usri4_password_age; scalar_t__ usrmod0_max_passwd_age; scalar_t__ usrmod0_min_passwd_age; scalar_t__ usri4_last_logon; int /*<<< orphan*/ * grui0_name; int /*<<< orphan*/ * lgrui0_name; int /*<<< orphan*/ * usri4_logon_hours; int /*<<< orphan*/  usri4_units_per_week; int /*<<< orphan*/ * usri4_home_dir; int /*<<< orphan*/ * usri4_profile; int /*<<< orphan*/ * usri4_script_path; int /*<<< orphan*/ * usri4_workstations; int /*<<< orphan*/  usri4_country_code; int /*<<< orphan*/ * usri4_usr_comment; int /*<<< orphan*/ * usri4_comment; int /*<<< orphan*/ * usri4_full_name; int /*<<< orphan*/ * usri4_name; } ;
typedef  TYPE_1__* PUSER_MODALS_INFO_0 ;
typedef  TYPE_1__* PUSER_INFO_4 ;
typedef  TYPE_1__* PLOCALGROUP_USERS_INFO_0 ;
typedef  TYPE_1__* PGROUP_USERS_INFO_0 ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  MAX_PREFERRED_LENGTH ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ TIMEQ_FOREVER ; 
 int UF_ACCOUNTDISABLE ; 
 int UF_DONT_EXPIRE_PASSWD ; 
 int UF_LOCKOUT ; 
 int UF_PASSWD_CANT_CHANGE ; 
 int UF_PASSWD_NOTREQD ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
NET_API_STATUS
FUNC16(LPWSTR lpUserName)
{
    PUSER_MODALS_INFO_0 pUserModals = NULL;
    PUSER_INFO_4 pUserInfo = NULL;
    PLOCALGROUP_USERS_INFO_0 pLocalGroupInfo = NULL;
    PGROUP_USERS_INFO_0 pGroupInfo = NULL;
    DWORD dwLocalGroupRead, dwLocalGroupTotal;
    DWORD dwGroupRead, dwGroupTotal;
    DWORD dwLastSet;
    DWORD i;
    WCHAR szCountry[40];
    INT nPaddedLength = 36;
    NET_API_STATUS Status;

    /* Modify the user */
    Status = FUNC7(NULL,
                            lpUserName,
                            4,
                            (LPBYTE*)&pUserInfo);
    if (Status != NERR_Success)
        return Status;

    Status = FUNC9(NULL,
                              0,
                              (LPBYTE*)&pUserModals);
    if (Status != NERR_Success)
        goto done;

    Status = FUNC8(NULL,
                                   lpUserName,
                                   0,
                                   0,
                                   (LPBYTE*)&pLocalGroupInfo,
                                   MAX_PREFERRED_LENGTH,
                                   &dwLocalGroupRead,
                                   &dwLocalGroupTotal);
    if (Status != NERR_Success)
        goto done;

    Status = FUNC6(NULL,
                              lpUserName,
                              0,
                              (LPBYTE*)&pGroupInfo,
                              MAX_PREFERRED_LENGTH,
                              &dwGroupRead,
                              &dwGroupTotal);
    if (Status != NERR_Success)
        goto done;

    FUNC13(4411, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_name);

    FUNC13(4412, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_full_name);

    FUNC13(4413, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_comment);

    FUNC13(4414, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_usr_comment);

    FUNC13(4416, nPaddedLength);
    FUNC3(pUserInfo->usri4_country_code,
                              FUNC0(szCountry), szCountry);
    FUNC1(StdOut, L"%03ld (%s)\n", &pUserInfo->usri4_country_code, szCountry);

    FUNC13(4419, nPaddedLength);
    if (pUserInfo->usri4_flags & UF_ACCOUNTDISABLE)
        FUNC12(4301);
    else if (pUserInfo->usri4_flags & UF_LOCKOUT)
        FUNC12(4440);
    else
        FUNC12(4300);
    FUNC2(StdOut, L"\n");

    FUNC13(4420, nPaddedLength);
    if (pUserInfo->usri4_acct_expires == TIMEQ_FOREVER)
        FUNC12(4305);
    else
        FUNC10(pUserInfo->usri4_acct_expires);
    FUNC2(StdOut, L"\n\n");

    FUNC13(4421, nPaddedLength);
    dwLastSet = FUNC4() - pUserInfo->usri4_password_age;
    FUNC10(dwLastSet);
    FUNC2(StdOut, L"\n");

    FUNC13(4422, nPaddedLength);
    if ((pUserInfo->usri4_flags & UF_DONT_EXPIRE_PASSWD) || pUserModals->usrmod0_max_passwd_age == TIMEQ_FOREVER)
        FUNC12(4305);
    else
        FUNC10(dwLastSet + pUserModals->usrmod0_max_passwd_age);
    FUNC2(StdOut, L"\n");

    FUNC13(4423, nPaddedLength);
    FUNC10(dwLastSet + pUserModals->usrmod0_min_passwd_age);
    FUNC2(StdOut, L"\n");

    FUNC13(4437, nPaddedLength);
    FUNC12((pUserInfo->usri4_flags & UF_PASSWD_NOTREQD) ? 4301 : 4300);
    FUNC2(StdOut, L"\n");

    FUNC13(4438, nPaddedLength);
    FUNC12((pUserInfo->usri4_flags & UF_PASSWD_CANT_CHANGE) ? 4301 : 4300);
    FUNC2(StdOut, L"\n\n");

    FUNC13(4424, nPaddedLength);
    if (pUserInfo->usri4_workstations == NULL || FUNC15(pUserInfo->usri4_workstations) == 0)
        FUNC12(4302);
    else
        FUNC1(StdOut, L"%s", pUserInfo->usri4_workstations);
    FUNC2(StdOut, L"\n");

    FUNC13(4429, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_script_path);

    FUNC13(4439, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_profile);

    FUNC13(4436, nPaddedLength);
    FUNC1(StdOut, L"%s\n", pUserInfo->usri4_home_dir);

    FUNC13(4430, nPaddedLength);
    if (pUserInfo->usri4_last_logon == 0)
        FUNC12(4305);
    else
        FUNC10(pUserInfo->usri4_last_logon);
    FUNC2(StdOut, L"\n\n");

    FUNC13(4432, nPaddedLength);
    if (pUserInfo->usri4_logon_hours == NULL)
    {
        FUNC12(4302);
        FUNC2(StdOut, L"\n");
    }
    else
    {
        FUNC11(pUserInfo->usri4_units_per_week,
                        pUserInfo->usri4_logon_hours,
                        nPaddedLength);
    }

    FUNC2(StdOut, L"\n");
    FUNC13(4427, nPaddedLength);
    if (dwLocalGroupTotal != 0 && pLocalGroupInfo != NULL)
    {
        for (i = 0; i < dwLocalGroupTotal; i++)
        {
            if (i != 0)
                FUNC14(L' ', nPaddedLength);
            FUNC1(StdOut, L"*%s\n", pLocalGroupInfo[i].lgrui0_name);
        }
    }
    else
    {
        FUNC2(StdOut, L"\n");
    }

    FUNC13(4431, nPaddedLength);
    if (dwGroupTotal != 0 && pGroupInfo != NULL)
    {
        for (i = 0; i < dwGroupTotal; i++)
        {
            if (i != 0)
                FUNC14(L' ', nPaddedLength);
            FUNC1(StdOut, L"*%s\n", pGroupInfo[i].grui0_name);
        }
    }
    else
    {
        FUNC2(StdOut, L"\n");
    }

done:
    if (pGroupInfo != NULL)
        FUNC5(pGroupInfo);

    if (pLocalGroupInfo != NULL)
        FUNC5(pLocalGroupInfo);

    if (pUserModals != NULL)
        FUNC5(pUserModals);

    if (pUserInfo != NULL)
        FUNC5(pUserInfo);

    return NERR_Success;
}