
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lvi ;
typedef int VOID ;
struct TYPE_7__ {int mask; scalar_t__ iImage; scalar_t__ state; int pszText; } ;
struct TYPE_6__ {int lgrpi1_comment; int lgrpi1_name; } ;
typedef TYPE_1__* PLOCALGROUP_INFO_1 ;
typedef int NET_API_STATUS ;
typedef TYPE_2__ LV_ITEM ;
typedef int LPBYTE ;
typedef int INT ;
typedef int HWND ;
typedef int DWORD_PTR ;
typedef size_t DWORD ;


 int ERROR_MORE_DATA ;
 int LVIF_IMAGE ;
 int LVIF_STATE ;
 int LVIF_TEXT ;
 int ListView_InsertItem (int ,TYPE_2__*) ;
 int ListView_SetItemText (int ,int ,int,int ) ;
 int NERR_Success ;
 int NetApiBufferFree (TYPE_1__*) ;
 int NetLocalGroupEnum (int *,int,int *,int,size_t*,size_t*,int *) ;
 int memset (TYPE_2__*,int,int) ;

__attribute__((used)) static VOID
UpdateGroupsList(HWND hwndListView)
{
    NET_API_STATUS netStatus;
    PLOCALGROUP_INFO_1 pBuffer;
    DWORD entriesread;
    DWORD totalentries;
    DWORD_PTR resume_handle = 0;
    DWORD i;
    LV_ITEM lvi;
    INT iItem;

    for (;;)
    {
        netStatus = NetLocalGroupEnum(((void*)0), 1, (LPBYTE*)&pBuffer,
                                      1024, &entriesread,
                                      &totalentries, &resume_handle);
        if (netStatus != NERR_Success && netStatus != ERROR_MORE_DATA)
            break;

        for (i = 0; i < entriesread; i++)
        {
           memset(&lvi, 0x00, sizeof(lvi));
           lvi.mask = LVIF_TEXT | LVIF_STATE | LVIF_IMAGE;
           lvi.pszText = pBuffer[i].lgrpi1_name;
           lvi.state = 0;
           lvi.iImage = 0;
           iItem = ListView_InsertItem(hwndListView, &lvi);

           ListView_SetItemText(hwndListView, iItem, 1,
                                pBuffer[i].lgrpi1_comment);
        }

        NetApiBufferFree(pBuffer);


        if (netStatus != ERROR_MORE_DATA)
            break;
    }

}
