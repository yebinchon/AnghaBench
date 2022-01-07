
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mask; int pszText; int lParam; int iIndent; int iOverlay; int iSelectedImage; int iImage; int cchTextMax; } ;
typedef TYPE_1__ CBE_ITEMDATA ;


 int CBEIF_TEXT ;
 int TRACE (char*,TYPE_1__ const*,int,...) ;
 int debugstr_txt (int ) ;

__attribute__((used)) static void COMBOEX_DumpItem (CBE_ITEMDATA const *item)
{
    TRACE("item %p - mask=%08x, pszText=%p, cchTM=%d, iImage=%d\n",
          item, item->mask, item->pszText, item->cchTextMax, item->iImage);
    TRACE("item %p - iSelectedImage=%d, iOverlay=%d, iIndent=%d, lParam=%08lx\n",
          item, item->iSelectedImage, item->iOverlay, item->iIndent, item->lParam);
    if (item->mask & CBEIF_TEXT)
        TRACE("item %p - pszText=%s\n", item, debugstr_txt(item->pszText));
}
