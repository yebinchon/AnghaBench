
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int item ;
typedef int VOID ;
struct TYPE_11__ {int wFlags; TYPE_2__* pLayout; TYPE_1__* pLocale; int pszIndicator; } ;
struct TYPE_10__ {int mask; int iImage; scalar_t__ lParam; scalar_t__ iItem; int pszText; } ;
struct TYPE_9__ {int pszName; } ;
struct TYPE_8__ {int pszName; } ;
typedef TYPE_3__ LV_ITEM ;
typedef scalar_t__ LPARAM ;
typedef int INT ;
typedef TYPE_4__ INPUT_LIST_NODE ;
typedef int HWND ;
typedef int * HIMAGELIST ;
typedef int * HICON ;


 int * CreateLayoutIcon (int ,int) ;
 int DestroyIcon (int *) ;
 int INPUT_LIST_NODE_FLAG_DEFAULT ;
 int ImageList_AddIcon (int *,int *) ;
 int LVIF_IMAGE ;
 int LVIF_PARAM ;
 int LVIF_TEXT ;
 int LVSIL_SMALL ;
 int * ListView_GetImageList (int ,int ) ;
 scalar_t__ ListView_GetItemCount (int ) ;
 int ListView_InsertItem (int ,TYPE_3__*) ;
 int ListView_SetItemText (int ,int,int,int ) ;
 int ZeroMemory (TYPE_3__*,int) ;

__attribute__((used)) static VOID
AddToInputListView(HWND hwndList, INPUT_LIST_NODE *pInputNode)
{
    INT ItemIndex = -1;
    INT ImageIndex = -1;
    LV_ITEM item;
    HIMAGELIST hImageList;

    hImageList = ListView_GetImageList(hwndList, LVSIL_SMALL);

    if (hImageList != ((void*)0))
    {
        HICON hLayoutIcon;

        hLayoutIcon = CreateLayoutIcon(pInputNode->pszIndicator,
                                       (pInputNode->wFlags & INPUT_LIST_NODE_FLAG_DEFAULT));

        if (hLayoutIcon != ((void*)0))
        {
            ImageIndex = ImageList_AddIcon(hImageList, hLayoutIcon);
            DestroyIcon(hLayoutIcon);
        }
    }

    ZeroMemory(&item, sizeof(item));

    item.mask = LVIF_TEXT | LVIF_PARAM | LVIF_IMAGE;
    item.pszText = pInputNode->pLocale->pszName;
    item.iItem = ListView_GetItemCount(hwndList) + 1;
    item.lParam = (LPARAM)pInputNode;
    item.iImage = ImageIndex;

    ItemIndex = ListView_InsertItem(hwndList, &item);

    ListView_SetItemText(hwndList, ItemIndex, 1, pInputNode->pLayout->pszName);
}
