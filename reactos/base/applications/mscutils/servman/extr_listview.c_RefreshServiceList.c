
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int lpDisplayName; } ;
struct TYPE_12__ {int mask; int iItem; scalar_t__ lParam; int pszText; } ;
struct TYPE_11__ {size_t NumServices; int hListView; TYPE_3__* pAllServices; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef TYPE_2__ LVITEMW ;
typedef scalar_t__ LPARAM ;
typedef scalar_t__ INT ;
typedef TYPE_3__ ENUM_SERVICE_STATUS_PROCESS ;
typedef size_t DWORD ;
typedef int BOOL ;


 int ChangeListViewText (TYPE_1__*,TYPE_3__*,scalar_t__) ;
 int FALSE ;
 scalar_t__ GetServiceList (TYPE_1__*) ;
 scalar_t__ LVDESC ;
 int LVIF_PARAM ;
 int LVIF_TEXT ;
 scalar_t__ LVLOGONAS ;
 int ListView_DeleteAllItems (int ) ;
 int ListView_InsertItem (int ,TYPE_2__*) ;
 int SendMessage (int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRUE ;
 int UpdateServiceCount (TYPE_1__*) ;
 int WM_SETREDRAW ;
 int ZeroMemory (TYPE_2__*,int) ;

BOOL
RefreshServiceList(PMAIN_WND_INFO Info)
{
    ENUM_SERVICE_STATUS_PROCESS *pService;
    LVITEMW lvItem;
    DWORD Index;

    SendMessage (Info->hListView,
                 WM_SETREDRAW,
                 FALSE,
                 0);

    (void)ListView_DeleteAllItems(Info->hListView);

    if (GetServiceList(Info))
    {
        for (Index = 0; Index < Info->NumServices; Index++)
        {
            INT i;

            pService = &Info->pAllServices[Index];


            ZeroMemory(&lvItem, sizeof(LVITEMW));
            lvItem.mask = LVIF_TEXT | LVIF_PARAM;
            lvItem.pszText = pService->lpDisplayName;


            lvItem.lParam = (LPARAM)pService;


            lvItem.iItem = ListView_InsertItem(Info->hListView, &lvItem);


            for (i = LVDESC; i <= LVLOGONAS; i++)
            {
                ChangeListViewText(Info, pService, i);
            }
        }

        UpdateServiceCount(Info);
    }


    SendMessageW(Info->hListView,
                 WM_SETREDRAW,
                 TRUE,
                 0);

    return TRUE;
}
