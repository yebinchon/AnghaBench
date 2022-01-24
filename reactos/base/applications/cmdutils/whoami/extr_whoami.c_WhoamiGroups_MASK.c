#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmpBuffer ;
typedef  int /*<<< orphan*/  szGroupName ;
typedef  int /*<<< orphan*/  szDomainName ;
typedef  int /*<<< orphan*/  WhoamiTable ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_4__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_3__ {int Attributes; int /*<<< orphan*/  Sid; } ;
typedef  size_t SID_NAME_USE ;
typedef  TYPE_2__* PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  size_t DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int IDS_ATTR_GROUP_ENABLED ; 
 int IDS_ATTR_GROUP_ENABLED_BY_DEFAULT ; 
 int IDS_ATTR_GROUP_MANDATORY ; 
 int IDS_ATTR_GROUP_OWNER ; 
 int IDS_COL_ATTRIB ; 
 int IDS_COL_GROUP_NAME ; 
 int IDS_COL_SID ; 
 int IDS_COL_TYPE ; 
 int /*<<< orphan*/  IDS_GROU_HEADER ; 
 int IDS_TP_ALIAS ; 
 int IDS_TP_LABEL ; 
 int IDS_TP_WELL_KNOWN_GROUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t*,size_t*) ; 
 int SE_GROUP_ENABLED ; 
 int SE_GROUP_ENABLED_BY_DEFAULT ; 
 int SE_GROUP_LOGON_ID ; 
 int SE_GROUP_MANDATORY ; 
 int SE_GROUP_OWNER ; 
 size_t SidTypeAlias ; 
 size_t SidTypeLabel ; 
 size_t SidTypeWellKnownGroup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TokenGroups ; 
 int /*<<< orphan*/  UNICODE_NULL ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,size_t,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 size_t FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(void)
{
    DWORD dwIndex = 0;
    LPWSTR pSidStr = 0;

    static WCHAR szGroupName[255] = {0};
    static WCHAR szDomainName[255] = {0};

    DWORD cchGroupName  = FUNC12(szGroupName);
    DWORD cchDomainName = FUNC12(szGroupName);

    SID_NAME_USE Use = 0;
    BYTE SidNameUseStr[12] =
    {
        /* SidTypeUser           */ -1,
        /* SidTypeGroup          */ -1,
        /* SidTypeDomain         */ -1,
        /* SidTypeUser           */ -1,
        /* SidTypeAlias          */ IDS_TP_ALIAS,
        /* SidTypeWellKnownGroup */ IDS_TP_WELL_KNOWN_GROUP,
        /* SidTypeDeletedAccount */ -1,
        /* SidTypeInvalid        */ -1,
        /* SidTypeUnknown        */ -1,
        /* SidTypeComputer       */ -1,
        /* SidTypeLabel          */ IDS_TP_LABEL
    };

    PTOKEN_GROUPS pGroupInfo = (PTOKEN_GROUPS)FUNC6(TokenGroups);
    UINT PrintingRow;
    WhoamiTable *GroupTable = NULL;

    if (pGroupInfo == NULL)
    {
        return 1;
    }

    /* the header is the first (0) row, so we start in the second one (1) */
    PrintingRow = 1;

    GroupTable = FUNC4(pGroupInfo->GroupCount + 1, 4);

    FUNC8(IDS_GROU_HEADER);

    FUNC10(GroupTable, FUNC7(IDS_COL_GROUP_NAME), 0, 0);
    FUNC10(GroupTable, FUNC7(IDS_COL_TYPE), 0, 1);
    FUNC10(GroupTable, FUNC7(IDS_COL_SID), 0, 2);
    FUNC10(GroupTable, FUNC7(IDS_COL_ATTRIB), 0, 3);

    for (dwIndex = 0; dwIndex < pGroupInfo->GroupCount; dwIndex++)
    {
        FUNC2(NULL,
                          pGroupInfo->Groups[dwIndex].Sid,
                          (LPWSTR)&szGroupName,
                          &cchGroupName,
                          (LPWSTR)&szDomainName,
                          &cchDomainName,
                          &Use);

        /* the original tool seems to limit the list to these kind of SID items */
        if ((Use == SidTypeWellKnownGroup || Use == SidTypeAlias ||
            Use == SidTypeLabel) && !(pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_LOGON_ID))
        {
                wchar_t tmpBuffer[666];

            /* looks like windows treats 0x60 as 0x7 for some reason, let's just nod and call it a day:
               0x60 is SE_GROUP_INTEGRITY | SE_GROUP_INTEGRITY_ENABLED
               0x07 is SE_GROUP_MANDATORY | SE_GROUP_ENABLED_BY_DEFAULT | SE_GROUP_ENABLED */

            if (pGroupInfo->Groups[dwIndex].Attributes == 0x60)
                pGroupInfo->Groups[dwIndex].Attributes = 0x07;

            /* 1- format it as DOMAIN\GROUP if the domain exists, or just GROUP if not */
            FUNC13((LPWSTR)&tmpBuffer,
                       FUNC12(tmpBuffer),
                       L"%s%s%s",
                       szDomainName,
                       cchDomainName ? L"\\" : L"",
                       szGroupName);

            FUNC10(GroupTable, tmpBuffer, PrintingRow, 0);

            /* 2- let's find out the group type by using a simple lookup table for lack of a better method */
            FUNC10(GroupTable, FUNC7(SidNameUseStr[Use]), PrintingRow, 1);

            /* 3- turn that SID into text-form */
            FUNC0(pGroupInfo->Groups[dwIndex].Sid, &pSidStr);

            FUNC10(GroupTable, pSidStr, PrintingRow, 2);

            FUNC1(pSidStr);

            /* 4- reuse that buffer for appending the attributes in text-form at the very end */
            FUNC11(tmpBuffer, sizeof(tmpBuffer));

            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_MANDATORY)
                FUNC3(tmpBuffer, FUNC12(tmpBuffer), FUNC7(IDS_ATTR_GROUP_MANDATORY));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_ENABLED_BY_DEFAULT)
                FUNC3(tmpBuffer, FUNC12(tmpBuffer), FUNC7(IDS_ATTR_GROUP_ENABLED_BY_DEFAULT));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_ENABLED)
                FUNC3(tmpBuffer, FUNC12(tmpBuffer), FUNC7(IDS_ATTR_GROUP_ENABLED));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_OWNER)
                FUNC3(tmpBuffer, FUNC12(tmpBuffer), FUNC7(IDS_ATTR_GROUP_OWNER));

            /* remove the last comma (', ' which is 2 wchars) of the buffer, let's keep it simple */
            tmpBuffer[FUNC14(FUNC15(tmpBuffer) - 2, 0)] = UNICODE_NULL;

            FUNC10(GroupTable, tmpBuffer, PrintingRow, 3);

            PrintingRow++;
        }

        /* reset the buffers so that we can reuse them */
        FUNC11(szGroupName, sizeof(szGroupName));
        FUNC11(szDomainName, sizeof(szDomainName));

        cchGroupName = 255;
        cchDomainName = 255;
    }

    FUNC9(GroupTable);

    /* cleanup our allocations */
    FUNC5((LPVOID)pGroupInfo);

    return 0;
}