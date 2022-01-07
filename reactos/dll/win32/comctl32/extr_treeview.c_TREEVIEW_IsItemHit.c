
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ TVHITTESTINFO ;
typedef int TREEVIEW_INFO ;
typedef int BOOL ;


 scalar_t__ TREEVIEW_IsFullRowSelect (int const*) ;
 int TVHT_ONITEM ;
 int TVHT_ONITEMBUTTON ;
 int TVHT_ONITEMINDENT ;
 int TVHT_ONITEMRIGHT ;

__attribute__((used)) static BOOL
TREEVIEW_IsItemHit(const TREEVIEW_INFO *infoPtr, const TVHITTESTINFO *ht)
{
    if (TREEVIEW_IsFullRowSelect(infoPtr))
        return ht->flags & (TVHT_ONITEMINDENT | TVHT_ONITEMBUTTON | TVHT_ONITEM | TVHT_ONITEMRIGHT);
    else
        return ht->flags & TVHT_ONITEM;
}
