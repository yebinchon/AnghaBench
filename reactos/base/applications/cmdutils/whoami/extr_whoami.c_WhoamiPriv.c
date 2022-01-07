
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WhoamiTable ;
typedef int WCHAR ;
struct TYPE_11__ {size_t PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_10__ {int Attributes; int Luid; } ;
typedef TYPE_2__* PWSTR ;
typedef TYPE_2__* PTOKEN_PRIVILEGES ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,size_t) ;
 int IDS_COL_DESCRIPTION ;
 int IDS_COL_PRIV_NAME ;
 int IDS_COL_STATE ;
 int IDS_PRIV_HEADER ;
 int IDS_STATE_DISABLED ;
 int IDS_STATE_ENABLED ;
 int IDS_UNKNOWN_DESCRIPTION ;
 scalar_t__ LookupPrivilegeDisplayNameW (int *,TYPE_2__*,TYPE_2__*,size_t*,size_t*) ;
 scalar_t__ LookupPrivilegeNameW (int *,int *,TYPE_2__*,size_t*) ;
 int SE_PRIVILEGE_ENABLED ;
 int TokenPrivileges ;
 int * WhoamiAllocTable (size_t,int) ;
 int WhoamiFree (TYPE_2__*) ;
 int WhoamiGetTokenInfo (int ) ;
 int WhoamiLoadRcString (int ) ;
 int WhoamiPrintHeader (int ) ;
 int WhoamiPrintTable (int *) ;
 int WhoamiSetTable (int *,int ,size_t,int) ;
 int WhoamiSetTableDyn (int *,TYPE_2__*,size_t,int) ;

int WhoamiPriv(void)
{
    PTOKEN_PRIVILEGES pPrivInfo = (PTOKEN_PRIVILEGES) WhoamiGetTokenInfo(TokenPrivileges);
    DWORD dwResult = 0, dwIndex = 0;
    WhoamiTable *PrivTable = ((void*)0);

    if (pPrivInfo == ((void*)0))
    {
        return 1;
    }

    PrivTable = WhoamiAllocTable(pPrivInfo->PrivilegeCount + 1, 3);

    WhoamiPrintHeader(IDS_PRIV_HEADER);

    WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_COL_PRIV_NAME), 0, 0);
    WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_COL_DESCRIPTION), 0, 1);
    WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_COL_STATE), 0, 2);

    for (dwIndex = 0; dwIndex < pPrivInfo->PrivilegeCount; dwIndex++)
    {
        PWSTR PrivName = ((void*)0), DispName = ((void*)0);
        DWORD PrivNameSize = 0, DispNameSize = 0;
        BOOL ret = FALSE;

        ret = LookupPrivilegeNameW(((void*)0),
                                   &pPrivInfo->Privileges[dwIndex].Luid,
                                   ((void*)0),
                                   &PrivNameSize);

        PrivName = HeapAlloc(GetProcessHeap(), 0, ++PrivNameSize*sizeof(WCHAR));

        LookupPrivilegeNameW(((void*)0),
                             &pPrivInfo->Privileges[dwIndex].Luid,
                             PrivName,
                             &PrivNameSize);

        WhoamiSetTableDyn(PrivTable, PrivName, dwIndex + 1, 0);





        LookupPrivilegeDisplayNameW(((void*)0), PrivName, ((void*)0), &DispNameSize, &dwResult);

        DispName = HeapAlloc(GetProcessHeap(), 0, ++DispNameSize * sizeof(WCHAR));

        ret = LookupPrivilegeDisplayNameW(((void*)0), PrivName, DispName, &DispNameSize, &dwResult);

        if (ret && DispName)
        {

            WhoamiSetTableDyn(PrivTable, DispName, dwIndex + 1, 1);
        }
        else
        {
            WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_UNKNOWN_DESCRIPTION), dwIndex + 1, 1);

            if (DispName != ((void*)0))
                WhoamiFree(DispName);
        }

        if (pPrivInfo->Privileges[dwIndex].Attributes & SE_PRIVILEGE_ENABLED)
            WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_STATE_ENABLED), dwIndex + 1, 2);
        else
            WhoamiSetTable(PrivTable, WhoamiLoadRcString(IDS_STATE_DISABLED), dwIndex + 1, 2);
    }

    WhoamiPrintTable(PrivTable);


    WhoamiFree(pPrivInfo);

    return 0;
}
