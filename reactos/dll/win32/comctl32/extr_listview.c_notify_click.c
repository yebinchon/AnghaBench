
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int nmia ;
struct TYPE_15__ {int hwndSelf; } ;
struct TYPE_14__ {int iItem; int pt; int iSubItem; } ;
struct TYPE_13__ {int lParam; scalar_t__ iSubItem; int iItem; int mask; } ;
struct TYPE_12__ {int lParam; int ptAction; int iSubItem; int iItem; } ;
typedef TYPE_1__ NMITEMACTIVATE ;
typedef int NMHDR ;
typedef TYPE_2__ LVITEMW ;
typedef TYPE_3__ LVHITTESTINFO ;
typedef int LRESULT ;
typedef TYPE_4__ LISTVIEW_INFO ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 scalar_t__ IsWindow (int ) ;
 scalar_t__ LISTVIEW_GetItemT (TYPE_4__ const*,TYPE_2__*,int) ;
 int LVIF_PARAM ;
 scalar_t__ NM_RCLICK ;
 int TRACE (char*,scalar_t__,int ) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int debuglvhittestinfo (TYPE_3__ const*) ;
 int notify_hdr (TYPE_4__ const*,scalar_t__,int *) ;

__attribute__((used)) static BOOL notify_click(const LISTVIEW_INFO *infoPtr, INT code, const LVHITTESTINFO *lvht)
{
    NMITEMACTIVATE nmia;
    LVITEMW item;
    HWND hwnd = infoPtr->hwndSelf;
    LRESULT ret;

    TRACE("code=%d, lvht=%s\n", code, debuglvhittestinfo(lvht));
    ZeroMemory(&nmia, sizeof(nmia));
    nmia.iItem = lvht->iItem;
    nmia.iSubItem = lvht->iSubItem;
    nmia.ptAction = lvht->pt;
    item.mask = LVIF_PARAM;
    item.iItem = lvht->iItem;
    item.iSubItem = 0;
    if (LISTVIEW_GetItemT(infoPtr, &item, TRUE)) nmia.lParam = item.lParam;
    ret = notify_hdr(infoPtr, code, (NMHDR*)&nmia);
    return IsWindow(hwnd) && (code == NM_RCLICK ? !ret : TRUE);
}
