
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmpBuffer ;
typedef int szGroupName ;
typedef int szDomainName ;
typedef int WhoamiTable ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_4__ {size_t GroupCount; TYPE_1__* Groups; } ;
struct TYPE_3__ {int Attributes; int Sid; } ;
typedef size_t SID_NAME_USE ;
typedef TYPE_2__* PTOKEN_GROUPS ;
typedef int * LPWSTR ;
typedef int LPVOID ;
typedef size_t DWORD ;
typedef int BYTE ;


 int ConvertSidToStringSidW (int ,int **) ;
 int IDS_ATTR_GROUP_ENABLED ;
 int IDS_ATTR_GROUP_ENABLED_BY_DEFAULT ;
 int IDS_ATTR_GROUP_MANDATORY ;
 int IDS_ATTR_GROUP_OWNER ;
 int IDS_COL_ATTRIB ;
 int IDS_COL_GROUP_NAME ;
 int IDS_COL_SID ;
 int IDS_COL_TYPE ;
 int IDS_GROU_HEADER ;
 int IDS_TP_ALIAS ;
 int IDS_TP_LABEL ;
 int IDS_TP_WELL_KNOWN_GROUP ;
 int LocalFree (int *) ;
 int LookupAccountSidW (int *,int ,int *,size_t*,int *,size_t*,size_t*) ;
 int SE_GROUP_ENABLED ;
 int SE_GROUP_ENABLED_BY_DEFAULT ;
 int SE_GROUP_LOGON_ID ;
 int SE_GROUP_MANDATORY ;
 int SE_GROUP_OWNER ;
 size_t SidTypeAlias ;
 size_t SidTypeLabel ;
 size_t SidTypeWellKnownGroup ;
 int StringCchCat (int *,size_t,int *) ;
 int TokenGroups ;
 int UNICODE_NULL ;
 int * WhoamiAllocTable (size_t,int) ;
 int WhoamiFree (int ) ;
 int WhoamiGetTokenInfo (int ) ;
 int * WhoamiLoadRcString (int) ;
 int WhoamiPrintHeader (int ) ;
 int WhoamiPrintTable (int *) ;
 int WhoamiSetTable (int *,int *,int,int) ;
 int ZeroMemory (int *,int) ;
 size_t _countof (int *) ;
 int _snwprintf (int *,size_t,char*,int *,char*,int *) ;
 size_t max (scalar_t__,int ) ;
 scalar_t__ wcslen (int *) ;

int WhoamiGroups(void)
{
    DWORD dwIndex = 0;
    LPWSTR pSidStr = 0;

    static WCHAR szGroupName[255] = {0};
    static WCHAR szDomainName[255] = {0};

    DWORD cchGroupName = _countof(szGroupName);
    DWORD cchDomainName = _countof(szGroupName);

    SID_NAME_USE Use = 0;
    BYTE SidNameUseStr[12] =
    {
                                    -1,
                                    -1,
                                    -1,
                                    -1,
                                    IDS_TP_ALIAS,
                                    IDS_TP_WELL_KNOWN_GROUP,
                                    -1,
                                    -1,
                                    -1,
                                    -1,
                                    IDS_TP_LABEL
    };

    PTOKEN_GROUPS pGroupInfo = (PTOKEN_GROUPS)WhoamiGetTokenInfo(TokenGroups);
    UINT PrintingRow;
    WhoamiTable *GroupTable = ((void*)0);

    if (pGroupInfo == ((void*)0))
    {
        return 1;
    }


    PrintingRow = 1;

    GroupTable = WhoamiAllocTable(pGroupInfo->GroupCount + 1, 4);

    WhoamiPrintHeader(IDS_GROU_HEADER);

    WhoamiSetTable(GroupTable, WhoamiLoadRcString(IDS_COL_GROUP_NAME), 0, 0);
    WhoamiSetTable(GroupTable, WhoamiLoadRcString(IDS_COL_TYPE), 0, 1);
    WhoamiSetTable(GroupTable, WhoamiLoadRcString(IDS_COL_SID), 0, 2);
    WhoamiSetTable(GroupTable, WhoamiLoadRcString(IDS_COL_ATTRIB), 0, 3);

    for (dwIndex = 0; dwIndex < pGroupInfo->GroupCount; dwIndex++)
    {
        LookupAccountSidW(((void*)0),
                          pGroupInfo->Groups[dwIndex].Sid,
                          (LPWSTR)&szGroupName,
                          &cchGroupName,
                          (LPWSTR)&szDomainName,
                          &cchDomainName,
                          &Use);


        if ((Use == SidTypeWellKnownGroup || Use == SidTypeAlias ||
            Use == SidTypeLabel) && !(pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_LOGON_ID))
        {
                wchar_t tmpBuffer[666];





            if (pGroupInfo->Groups[dwIndex].Attributes == 0x60)
                pGroupInfo->Groups[dwIndex].Attributes = 0x07;


            _snwprintf((LPWSTR)&tmpBuffer,
                       _countof(tmpBuffer),
                       L"%s%s%s",
                       szDomainName,
                       cchDomainName ? L"\\" : L"",
                       szGroupName);

            WhoamiSetTable(GroupTable, tmpBuffer, PrintingRow, 0);


            WhoamiSetTable(GroupTable, WhoamiLoadRcString(SidNameUseStr[Use]), PrintingRow, 1);


            ConvertSidToStringSidW(pGroupInfo->Groups[dwIndex].Sid, &pSidStr);

            WhoamiSetTable(GroupTable, pSidStr, PrintingRow, 2);

            LocalFree(pSidStr);


            ZeroMemory(tmpBuffer, sizeof(tmpBuffer));

            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_MANDATORY)
                StringCchCat(tmpBuffer, _countof(tmpBuffer), WhoamiLoadRcString(IDS_ATTR_GROUP_MANDATORY));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_ENABLED_BY_DEFAULT)
                StringCchCat(tmpBuffer, _countof(tmpBuffer), WhoamiLoadRcString(IDS_ATTR_GROUP_ENABLED_BY_DEFAULT));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_ENABLED)
                StringCchCat(tmpBuffer, _countof(tmpBuffer), WhoamiLoadRcString(IDS_ATTR_GROUP_ENABLED));
            if (pGroupInfo->Groups[dwIndex].Attributes & SE_GROUP_OWNER)
                StringCchCat(tmpBuffer, _countof(tmpBuffer), WhoamiLoadRcString(IDS_ATTR_GROUP_OWNER));


            tmpBuffer[max(wcslen(tmpBuffer) - 2, 0)] = UNICODE_NULL;

            WhoamiSetTable(GroupTable, tmpBuffer, PrintingRow, 3);

            PrintingRow++;
        }


        ZeroMemory(szGroupName, sizeof(szGroupName));
        ZeroMemory(szDomainName, sizeof(szDomainName));

        cchGroupName = 255;
        cchDomainName = 255;
    }

    WhoamiPrintTable(GroupTable);


    WhoamiFree((LPVOID)pGroupInfo);

    return 0;
}
