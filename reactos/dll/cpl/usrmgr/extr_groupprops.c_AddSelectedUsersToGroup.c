
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lgrmi3_domainandname; } ;
struct TYPE_4__ {int szGroupName; } ;
typedef int TCHAR ;
typedef TYPE_1__* PGENERAL_GROUP_DATA ;
typedef scalar_t__ NET_API_STATUS ;
typedef int LPBYTE ;
typedef TYPE_2__ LOCALGROUP_MEMBERS_INFO_3 ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int DebugPrintf (int ,int *) ;
 scalar_t__ ERROR_MEMBER_IN_ALIAS ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_USER_ADD_MEMBERSHIP_LIST ;
 int LVNI_SELECTED ;
 int ListView_GetItemText (int ,scalar_t__,int ,int *,int) ;
 scalar_t__ ListView_GetNextItem (int ,scalar_t__,int ) ;
 scalar_t__ ListView_GetSelectedCount (int ) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBox (int *,int *,int ,int) ;
 scalar_t__ NERR_Success ;
 scalar_t__ NetLocalGroupAddMembers (int *,int ,int,int ,int) ;
 int TEXT (char*) ;
 int TRUE ;
 int UNLEN ;
 int _TEXT (char*) ;
 int wsprintf (int *,int ,scalar_t__) ;

__attribute__((used)) static BOOL
AddSelectedUsersToGroup(HWND hwndDlg,
                        PGENERAL_GROUP_DATA pGroupData)
{
    HWND hwndLV;
    INT nSelectedItems;
    INT nItem;
    TCHAR szUserName[UNLEN];
    BOOL bResult = FALSE;
    LOCALGROUP_MEMBERS_INFO_3 memberInfo;
    NET_API_STATUS status;

    hwndLV = GetDlgItem(hwndDlg, IDC_USER_ADD_MEMBERSHIP_LIST);

    nSelectedItems = ListView_GetSelectedCount(hwndLV);
    if (nSelectedItems > 0)
    {
        nItem = ListView_GetNextItem(hwndLV, -1, LVNI_SELECTED);
        while (nItem != -1)
        {

            ListView_GetItemText(hwndLV,
                                 nItem, 0,
                                 szUserName,
                                 UNLEN);

            DebugPrintf(_TEXT("Selected user: %s"), szUserName);

            memberInfo.lgrmi3_domainandname = szUserName;

            status = NetLocalGroupAddMembers(((void*)0), pGroupData->szGroupName, 3,
                                             (LPBYTE)&memberInfo, 1);
            if (status != NERR_Success && status != ERROR_MEMBER_IN_ALIAS)
            {
                TCHAR szText[256];
                wsprintf(szText, TEXT("Error: %u"), status);
                MessageBox(((void*)0), szText, TEXT("NetLocalGroupAddMembers"), MB_ICONERROR | MB_OK);
            }
            else
            {
                bResult = TRUE;
            }

            nItem = ListView_GetNextItem(hwndLV, nItem, LVNI_SELECTED);
        }
    }

    return bResult;
}
