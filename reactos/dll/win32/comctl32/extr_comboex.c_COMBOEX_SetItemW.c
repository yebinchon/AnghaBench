
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_15__ {int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; scalar_t__ pszText; } ;
struct TYPE_14__ {int iItem; int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; scalar_t__ pszText; } ;
struct TYPE_13__ {int nb_items; int hwndCombo; int hwndEdit; } ;
typedef int INT_PTR ;
typedef int INT ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef TYPE_2__ COMBOBOXEXITEMW ;
typedef TYPE_3__ CBE_ITEMDATA ;
typedef int BOOL ;


 scalar_t__ Alloc (int) ;
 int CBEIF_IMAGE ;
 int CBEIF_INDENT ;
 int CBEIF_LPARAM ;
 int CBEIF_OVERLAY ;
 int CBEIF_SELECTEDIMAGE ;
 int CBEIF_TEXT ;
 int COMBOEX_DumpInput (TYPE_2__ const*) ;
 int COMBOEX_DumpItem (TYPE_3__*) ;
 TYPE_3__* COMBOEX_FindItem (TYPE_1__*,int) ;
 int COMBOEX_FreeText (TYPE_3__*) ;
 int COMBOEX_SetEditText (TYPE_1__*,TYPE_3__*) ;
 int FALSE ;
 scalar_t__ LPSTR_TEXTCALLBACKW ;
 int RDW_ERASE ;
 int RDW_INVALIDATE ;
 int RedrawWindow (int ,int ,int ,int) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int comboex ;
 scalar_t__ is_textW (scalar_t__) ;
 int strcpyW (scalar_t__,scalar_t__) ;
 int strlenW (scalar_t__) ;

__attribute__((used)) static BOOL COMBOEX_SetItemW (COMBOEX_INFO *infoPtr, const COMBOBOXEXITEMW *cit)
{
    INT_PTR index = cit->iItem;
    CBE_ITEMDATA *item;

    if (TRACE_ON(comboex)) COMBOEX_DumpInput (cit);


    if ((index >= infoPtr->nb_items) || (index < -1)) return FALSE;


    if ((index == -1) && !infoPtr->hwndEdit) return FALSE;

    if (!(item = COMBOEX_FindItem(infoPtr, index))) return FALSE;


    item->mask |= cit->mask;
    if (cit->mask & CBEIF_TEXT) {
 INT len = 0;

 COMBOEX_FreeText(item);
        if (is_textW(cit->pszText)) len = strlenW(cit->pszText);
 if (len > 0) {
            item->pszText = Alloc ((len + 1)*sizeof(WCHAR));
     if (!item->pszText) return FALSE;
     strcpyW(item->pszText, cit->pszText);
 } else if (cit->pszText == LPSTR_TEXTCALLBACKW)
     item->pszText = LPSTR_TEXTCALLBACKW;
        item->cchTextMax = cit->cchTextMax;
    }
    if (cit->mask & CBEIF_IMAGE)
        item->iImage = cit->iImage;
    if (cit->mask & CBEIF_SELECTEDIMAGE)
        item->iSelectedImage = cit->iSelectedImage;
    if (cit->mask & CBEIF_OVERLAY)
        item->iOverlay = cit->iOverlay;
    if (cit->mask & CBEIF_INDENT)
        item->iIndent = cit->iIndent;
    if (cit->mask & CBEIF_LPARAM)
        item->lParam = cit->lParam;

    if (TRACE_ON(comboex)) COMBOEX_DumpItem (item);


    if (cit->iItem == -1 && cit->mask & CBEIF_TEXT) {
 COMBOEX_SetEditText (infoPtr, item);
 RedrawWindow (infoPtr->hwndCombo, 0, 0, RDW_ERASE | RDW_INVALIDATE);
    }
    return TRUE;
}
