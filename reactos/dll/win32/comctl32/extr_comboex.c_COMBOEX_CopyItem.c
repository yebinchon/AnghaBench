
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; scalar_t__* pszText; } ;
struct TYPE_5__ {int mask; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; scalar_t__* pszText; } ;
typedef TYPE_1__ COMBOBOXEXITEMW ;
typedef TYPE_2__ CBE_ITEMDATA ;


 int CBEIF_IMAGE ;
 int CBEIF_INDENT ;
 int CBEIF_LPARAM ;
 int CBEIF_OVERLAY ;
 int CBEIF_SELECTEDIMAGE ;
 int CBEIF_TEXT ;
 scalar_t__ is_textW (scalar_t__*) ;
 int lstrcpynW (scalar_t__*,scalar_t__*,int ) ;

__attribute__((used)) static void COMBOEX_CopyItem (const CBE_ITEMDATA *item, COMBOBOXEXITEMW *cit)
{
    if (cit->mask & CBEIF_TEXT) {



        if (cit->pszText) {
     if (is_textW(item->pszText))
                lstrcpynW(cit->pszText, item->pszText, cit->cchTextMax);
     else
  cit->pszText[0] = 0;
        } else {
            cit->pszText = item->pszText;
            cit->cchTextMax = item->cchTextMax;
        }
    }
    if (cit->mask & CBEIF_IMAGE)
 cit->iImage = item->iImage;
    if (cit->mask & CBEIF_SELECTEDIMAGE)
 cit->iSelectedImage = item->iSelectedImage;
    if (cit->mask & CBEIF_OVERLAY)
 cit->iOverlay = item->iOverlay;
    if (cit->mask & CBEIF_INDENT)
 cit->iIndent = item->iIndent;
    if (cit->mask & CBEIF_LPARAM)
 cit->lParam = item->lParam;
}
