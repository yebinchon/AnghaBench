
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_4__ {int Attributes; scalar_t__ Sid; } ;
typedef TYPE_2__* PTOKEN_GROUPS ;
typedef scalar_t__ PSID ;
typedef char* LPWSTR ;
typedef size_t DWORD ;


 int ConvertSidToStringSidW (scalar_t__,char**) ;
 int LocalFree (char*) ;
 int SE_GROUP_LOGON_ID ;
 int TokenGroups ;
 int WhoamiFree (TYPE_2__*) ;
 int WhoamiGetTokenInfo (int ) ;
 int wprintf (char*,...) ;

int WhoamiLogonId(void)
{
    PTOKEN_GROUPS pGroupInfo = (PTOKEN_GROUPS) WhoamiGetTokenInfo(TokenGroups);
    DWORD dwIndex = 0;
    LPWSTR pSidStr = 0;
    PSID pSid = 0;

    if (pGroupInfo == ((void*)0))
        return 0;


    for (dwIndex = 0; dwIndex < pGroupInfo->GroupCount; dwIndex++)
    {
        if ((pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_LOGON_ID) == SE_GROUP_LOGON_ID)
        {
            pSid = pGroupInfo->Groups[dwIndex].Sid;
        }
    }

    if (pSid == 0)
    {
        WhoamiFree(pGroupInfo);
        wprintf(L"ERROR: Couldn't find the logon SID.\n");
        return 1;
    }
    if (!ConvertSidToStringSidW(pSid, &pSidStr))
    {
        WhoamiFree(pGroupInfo);
        wprintf(L"ERROR: Couldn't convert the logon SID to a string.\n");
        return 1;
    }
    else
    {

        wprintf(L"%s\n", pSidStr);
    }


    LocalFree(pSidStr);
    WhoamiFree(pGroupInfo);

    return 0;
}
