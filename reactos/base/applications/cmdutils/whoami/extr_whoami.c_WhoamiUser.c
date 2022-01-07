
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WhoamiTable ;
struct TYPE_10__ {int Sid; } ;
struct TYPE_11__ {TYPE_1__ User; } ;
typedef TYPE_2__* PTOKEN_USER ;
typedef TYPE_2__* LPWSTR ;


 int ConvertSidToStringSidW (int ,TYPE_2__**) ;
 int IDS_COL_SID ;
 int IDS_COL_USER_NAME ;
 int IDS_USER_HEADER ;
 int LocalFree (TYPE_2__*) ;
 int NameSamCompatible ;
 int TokenUser ;
 int * WhoamiAllocTable (int,int) ;
 int WhoamiFree (TYPE_2__*) ;
 int WhoamiGetTokenInfo (int ) ;
 TYPE_2__* WhoamiGetUser (int ) ;
 TYPE_2__* WhoamiLoadRcString (int ) ;
 int WhoamiPrintHeader (int ) ;
 int WhoamiPrintTable (int *) ;
 int WhoamiSetTable (int *,TYPE_2__*,int,int) ;

int WhoamiUser(void)
{
    PTOKEN_USER pUserInfo = (PTOKEN_USER) WhoamiGetTokenInfo(TokenUser);
    LPWSTR pUserStr = ((void*)0);
    LPWSTR pSidStr = ((void*)0);
    WhoamiTable *UserTable = ((void*)0);

    if (pUserInfo == ((void*)0))
    {
        return 1;
    }

    pUserStr = WhoamiGetUser(NameSamCompatible);
    if (pUserStr == ((void*)0))
    {
        WhoamiFree(pUserInfo);
        return 1;
    }

    UserTable = WhoamiAllocTable(2, 2);

    WhoamiPrintHeader(IDS_USER_HEADER);


    WhoamiSetTable(UserTable, WhoamiLoadRcString(IDS_COL_USER_NAME), 0, 0);
    WhoamiSetTable(UserTable, WhoamiLoadRcString(IDS_COL_SID), 0, 1);

    ConvertSidToStringSidW(pUserInfo->User.Sid, &pSidStr);


    WhoamiSetTable(UserTable, pUserStr, 1, 0);
    WhoamiSetTable(UserTable, pSidStr, 1, 1);

    WhoamiPrintTable(UserTable);


    LocalFree(pSidStr);
    WhoamiFree(pUserInfo);
    WhoamiFree(pUserStr);

    return 0;
}
