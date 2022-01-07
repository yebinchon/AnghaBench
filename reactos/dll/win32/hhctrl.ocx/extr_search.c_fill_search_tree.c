
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lvi ;
struct TYPE_6__ {int mask; scalar_t__ lParam; int pszText; scalar_t__ cchTextMax; int iItem; } ;
struct TYPE_5__ {struct TYPE_5__* next; scalar_t__ id; int title; int filename; } ;
typedef TYPE_1__ SearchItem ;
typedef TYPE_2__ LVITEMW ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 int LVIF_PARAM ;
 int LVIF_TEXT ;
 int LVM_DELETEALLITEMS ;
 int LVM_INSERTITEMW ;
 scalar_t__ SendMessageW (int ,int ,int ,scalar_t__) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int ) ;
 scalar_t__ lstrlenW (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void fill_search_tree(HWND hwndList, SearchItem *item)
{
    int index = 0;
    LVITEMW lvi;

    SendMessageW(hwndList, LVM_DELETEALLITEMS, 0, 0);
    while(item) {
        TRACE("list debug: %s\n", debugstr_w(item->filename));

        memset(&lvi, 0, sizeof(lvi));
        lvi.iItem = index++;
        lvi.mask = LVIF_TEXT|LVIF_PARAM;
        lvi.cchTextMax = lstrlenW(item->title)+1;
        lvi.pszText = item->title;
        lvi.lParam = (LPARAM)item;
        item->id = (HTREEITEM)SendMessageW(hwndList, LVM_INSERTITEMW, 0, (LPARAM)&lvi);
        item = item->next;
    }
}
