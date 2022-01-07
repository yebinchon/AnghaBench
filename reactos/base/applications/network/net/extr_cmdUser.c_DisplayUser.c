
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {int usri4_flags; scalar_t__ usri4_acct_expires; scalar_t__ usri4_password_age; scalar_t__ usrmod0_max_passwd_age; scalar_t__ usrmod0_min_passwd_age; scalar_t__ usri4_last_logon; int * grui0_name; int * lgrui0_name; int * usri4_logon_hours; int usri4_units_per_week; int * usri4_home_dir; int * usri4_profile; int * usri4_script_path; int * usri4_workstations; int usri4_country_code; int * usri4_usr_comment; int * usri4_comment; int * usri4_full_name; int * usri4_name; } ;
typedef TYPE_1__* PUSER_MODALS_INFO_0 ;
typedef TYPE_1__* PUSER_INFO_4 ;
typedef TYPE_1__* PLOCALGROUP_USERS_INFO_0 ;
typedef TYPE_1__* PGROUP_USERS_INFO_0 ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPWSTR ;
typedef int LPBYTE ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 int ARRAYSIZE (int *) ;
 int ConPrintf (int ,char*,int *,...) ;
 int ConPuts (int ,char*) ;
 int GetCountryFromCountryCode (int ,int ,int *) ;
 scalar_t__ GetTimeInSeconds () ;
 int MAX_PREFERRED_LENGTH ;
 scalar_t__ NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 scalar_t__ NetUserGetGroups (int *,int ,int ,int *,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ NetUserGetInfo (int *,int ,int,int *) ;
 scalar_t__ NetUserGetLocalGroups (int *,int ,int ,int ,int *,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ NetUserModalsGet (int *,int ,int *) ;
 int PrintDateTime (scalar_t__) ;
 int PrintLogonHours (int ,int *,int) ;
 int PrintMessageString (int) ;
 int PrintPaddedMessageString (int,int) ;
 int PrintPadding (int,int) ;
 int StdOut ;
 scalar_t__ TIMEQ_FOREVER ;
 int UF_ACCOUNTDISABLE ;
 int UF_DONT_EXPIRE_PASSWD ;
 int UF_LOCKOUT ;
 int UF_PASSWD_CANT_CHANGE ;
 int UF_PASSWD_NOTREQD ;
 scalar_t__ wcslen (int *) ;

__attribute__((used)) static
NET_API_STATUS
DisplayUser(LPWSTR lpUserName)
{
    PUSER_MODALS_INFO_0 pUserModals = ((void*)0);
    PUSER_INFO_4 pUserInfo = ((void*)0);
    PLOCALGROUP_USERS_INFO_0 pLocalGroupInfo = ((void*)0);
    PGROUP_USERS_INFO_0 pGroupInfo = ((void*)0);
    DWORD dwLocalGroupRead, dwLocalGroupTotal;
    DWORD dwGroupRead, dwGroupTotal;
    DWORD dwLastSet;
    DWORD i;
    WCHAR szCountry[40];
    INT nPaddedLength = 36;
    NET_API_STATUS Status;


    Status = NetUserGetInfo(((void*)0),
                            lpUserName,
                            4,
                            (LPBYTE*)&pUserInfo);
    if (Status != NERR_Success)
        return Status;

    Status = NetUserModalsGet(((void*)0),
                              0,
                              (LPBYTE*)&pUserModals);
    if (Status != NERR_Success)
        goto done;

    Status = NetUserGetLocalGroups(((void*)0),
                                   lpUserName,
                                   0,
                                   0,
                                   (LPBYTE*)&pLocalGroupInfo,
                                   MAX_PREFERRED_LENGTH,
                                   &dwLocalGroupRead,
                                   &dwLocalGroupTotal);
    if (Status != NERR_Success)
        goto done;

    Status = NetUserGetGroups(((void*)0),
                              lpUserName,
                              0,
                              (LPBYTE*)&pGroupInfo,
                              MAX_PREFERRED_LENGTH,
                              &dwGroupRead,
                              &dwGroupTotal);
    if (Status != NERR_Success)
        goto done;

    PrintPaddedMessageString(4411, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_name);

    PrintPaddedMessageString(4412, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_full_name);

    PrintPaddedMessageString(4413, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_comment);

    PrintPaddedMessageString(4414, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_usr_comment);

    PrintPaddedMessageString(4416, nPaddedLength);
    GetCountryFromCountryCode(pUserInfo->usri4_country_code,
                              ARRAYSIZE(szCountry), szCountry);
    ConPrintf(StdOut, L"%03ld (%s)\n", pUserInfo->usri4_country_code, szCountry);

    PrintPaddedMessageString(4419, nPaddedLength);
    if (pUserInfo->usri4_flags & UF_ACCOUNTDISABLE)
        PrintMessageString(4301);
    else if (pUserInfo->usri4_flags & UF_LOCKOUT)
        PrintMessageString(4440);
    else
        PrintMessageString(4300);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4420, nPaddedLength);
    if (pUserInfo->usri4_acct_expires == TIMEQ_FOREVER)
        PrintMessageString(4305);
    else
        PrintDateTime(pUserInfo->usri4_acct_expires);
    ConPuts(StdOut, L"\n\n");

    PrintPaddedMessageString(4421, nPaddedLength);
    dwLastSet = GetTimeInSeconds() - pUserInfo->usri4_password_age;
    PrintDateTime(dwLastSet);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4422, nPaddedLength);
    if ((pUserInfo->usri4_flags & UF_DONT_EXPIRE_PASSWD) || pUserModals->usrmod0_max_passwd_age == TIMEQ_FOREVER)
        PrintMessageString(4305);
    else
        PrintDateTime(dwLastSet + pUserModals->usrmod0_max_passwd_age);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4423, nPaddedLength);
    PrintDateTime(dwLastSet + pUserModals->usrmod0_min_passwd_age);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4437, nPaddedLength);
    PrintMessageString((pUserInfo->usri4_flags & UF_PASSWD_NOTREQD) ? 4301 : 4300);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4438, nPaddedLength);
    PrintMessageString((pUserInfo->usri4_flags & UF_PASSWD_CANT_CHANGE) ? 4301 : 4300);
    ConPuts(StdOut, L"\n\n");

    PrintPaddedMessageString(4424, nPaddedLength);
    if (pUserInfo->usri4_workstations == ((void*)0) || wcslen(pUserInfo->usri4_workstations) == 0)
        PrintMessageString(4302);
    else
        ConPrintf(StdOut, L"%s", pUserInfo->usri4_workstations);
    ConPuts(StdOut, L"\n");

    PrintPaddedMessageString(4429, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_script_path);

    PrintPaddedMessageString(4439, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_profile);

    PrintPaddedMessageString(4436, nPaddedLength);
    ConPrintf(StdOut, L"%s\n", pUserInfo->usri4_home_dir);

    PrintPaddedMessageString(4430, nPaddedLength);
    if (pUserInfo->usri4_last_logon == 0)
        PrintMessageString(4305);
    else
        PrintDateTime(pUserInfo->usri4_last_logon);
    ConPuts(StdOut, L"\n\n");

    PrintPaddedMessageString(4432, nPaddedLength);
    if (pUserInfo->usri4_logon_hours == ((void*)0))
    {
        PrintMessageString(4302);
        ConPuts(StdOut, L"\n");
    }
    else
    {
        PrintLogonHours(pUserInfo->usri4_units_per_week,
                        pUserInfo->usri4_logon_hours,
                        nPaddedLength);
    }

    ConPuts(StdOut, L"\n");
    PrintPaddedMessageString(4427, nPaddedLength);
    if (dwLocalGroupTotal != 0 && pLocalGroupInfo != ((void*)0))
    {
        for (i = 0; i < dwLocalGroupTotal; i++)
        {
            if (i != 0)
                PrintPadding(L' ', nPaddedLength);
            ConPrintf(StdOut, L"*%s\n", pLocalGroupInfo[i].lgrui0_name);
        }
    }
    else
    {
        ConPuts(StdOut, L"\n");
    }

    PrintPaddedMessageString(4431, nPaddedLength);
    if (dwGroupTotal != 0 && pGroupInfo != ((void*)0))
    {
        for (i = 0; i < dwGroupTotal; i++)
        {
            if (i != 0)
                PrintPadding(L' ', nPaddedLength);
            ConPrintf(StdOut, L"*%s\n", pGroupInfo[i].grui0_name);
        }
    }
    else
    {
        ConPuts(StdOut, L"\n");
    }

done:
    if (pGroupInfo != ((void*)0))
        NetApiBufferFree(pGroupInfo);

    if (pLocalGroupInfo != ((void*)0))
        NetApiBufferFree(pLocalGroupInfo);

    if (pUserModals != ((void*)0))
        NetApiBufferFree(pUserModals);

    if (pUserInfo != ((void*)0))
        NetApiBufferFree(pUserInfo);

    return NERR_Success;
}
