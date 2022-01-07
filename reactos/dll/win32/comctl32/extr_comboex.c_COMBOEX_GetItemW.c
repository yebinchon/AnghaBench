
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int iItem; } ;
struct TYPE_7__ {int nb_items; int hwndEdit; } ;
typedef int INT_PTR ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef TYPE_2__ COMBOBOXEXITEMW ;
typedef int CBE_ITEMDATA ;
typedef int BOOL ;


 int COMBOEX_CopyItem (int *,TYPE_2__*) ;
 int * COMBOEX_FindItem (TYPE_1__*,int) ;
 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;

__attribute__((used)) static BOOL COMBOEX_GetItemW (COMBOEX_INFO *infoPtr, COMBOBOXEXITEMW *cit)
{
    INT_PTR index = cit->iItem;
    CBE_ITEMDATA *item;

    TRACE("\n");


    if ((index >= infoPtr->nb_items) || (index < -1)) return FALSE;


    if ((index == -1) && !infoPtr->hwndEdit) return FALSE;

    if (!(item = COMBOEX_FindItem(infoPtr, index))) return FALSE;

    COMBOEX_CopyItem (item, cit);

    return TRUE;
}
