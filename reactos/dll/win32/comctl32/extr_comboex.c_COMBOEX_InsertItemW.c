
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_19__ {int mask; } ;
struct TYPE_18__ {int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; void* pszText; struct TYPE_18__* next; } ;
struct TYPE_17__ {int iItem; int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; void* pszText; } ;
struct TYPE_16__ {int nb_items; int hwndCombo; TYPE_4__* items; } ;
struct TYPE_15__ {TYPE_5__ ceItem; } ;
typedef TYPE_1__ NMCOMBOBOXEXW ;
typedef int LPARAM ;
typedef int INT_PTR ;
typedef int INT ;
typedef TYPE_2__ COMBOEX_INFO ;
typedef TYPE_3__ COMBOBOXEXITEMW ;
typedef TYPE_4__ CBE_ITEMDATA ;


 void* Alloc (int) ;
 int CBEIF_IMAGE ;
 int CBEIF_INDENT ;
 int CBEIF_LPARAM ;
 int CBEIF_OVERLAY ;
 int CBEIF_SELECTEDIMAGE ;
 int CBEIF_TEXT ;
 int CBEN_INSERTITEM ;
 int CB_INSERTSTRING ;
 int COMBOEX_CopyItem (TYPE_4__*,TYPE_5__*) ;
 int COMBOEX_DumpInput (TYPE_3__ const*) ;
 int COMBOEX_DumpItem (TYPE_4__*) ;
 int COMBOEX_NotifyItem (TYPE_2__*,int ,TYPE_1__*) ;
 int ERR (char*) ;
 int Free (TYPE_4__*) ;
 void* LPSTR_TEXTCALLBACKW ;
 int SendMessageW (int ,int ,int,int ) ;
 int TRACE (char*) ;
 scalar_t__ TRACE_ON (int ) ;
 int comboex ;
 scalar_t__ is_textW (void*) ;
 int memset (TYPE_5__*,int ,int) ;
 int strcpyW (void*,void*) ;
 int strlenW (void*) ;

__attribute__((used)) static INT COMBOEX_InsertItemW (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMW const *cit)
{
    INT_PTR index;
    CBE_ITEMDATA *item;
    NMCOMBOBOXEXW nmcit;

    TRACE("\n");

    if (TRACE_ON(comboex)) COMBOEX_DumpInput (cit);


    index = cit->iItem;
    if (index == -1) index = infoPtr->nb_items;
    if (index > infoPtr->nb_items) return -1;


    if(!(item = Alloc (sizeof(*item)))) return -1;


    if (index == infoPtr->nb_items) {

        item->next = infoPtr->items;
 infoPtr->items = item;
    }
    else {
        INT i = infoPtr->nb_items-1;
 CBE_ITEMDATA *moving = infoPtr->items;

 while ((i > index) && moving) {
     moving = moving->next;
     i--;
 }
 if (!moving) {
     ERR("COMBOBOXEX item structures broken. Please report!\n");
     Free(item);
     return -1;
 }
 item->next = moving->next;
 moving->next = item;
    }


    item->mask = cit->mask;
    if (item->mask & CBEIF_TEXT) {
 INT len = 0;

        if (is_textW(cit->pszText)) len = strlenW (cit->pszText);
 if (len > 0) {
            item->pszText = Alloc ((len + 1)*sizeof(WCHAR));
     if (!item->pszText) {
  Free(item);
  return -1;
     }
     strcpyW (item->pszText, cit->pszText);
 }
 else if (cit->pszText == LPSTR_TEXTCALLBACKW)
     item->pszText = LPSTR_TEXTCALLBACKW;
        item->cchTextMax = cit->cchTextMax;
    }
    if (item->mask & CBEIF_IMAGE)
        item->iImage = cit->iImage;
    if (item->mask & CBEIF_SELECTEDIMAGE)
        item->iSelectedImage = cit->iSelectedImage;
    if (item->mask & CBEIF_OVERLAY)
        item->iOverlay = cit->iOverlay;
    if (item->mask & CBEIF_INDENT)
        item->iIndent = cit->iIndent;
    if (item->mask & CBEIF_LPARAM)
        item->lParam = cit->lParam;
    infoPtr->nb_items++;

    if (TRACE_ON(comboex)) COMBOEX_DumpItem (item);

    SendMessageW (infoPtr->hwndCombo, CB_INSERTSTRING, cit->iItem, (LPARAM)item);

    memset (&nmcit.ceItem, 0, sizeof(nmcit.ceItem));
    nmcit.ceItem.mask=~0;
    COMBOEX_CopyItem (item, &nmcit.ceItem);
    COMBOEX_NotifyItem (infoPtr, CBEN_INSERTITEM, &nmcit);

    return index;

}
