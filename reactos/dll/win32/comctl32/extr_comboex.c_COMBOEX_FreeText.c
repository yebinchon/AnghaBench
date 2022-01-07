
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pszTemp; int * pszText; } ;
typedef TYPE_1__ CBE_ITEMDATA ;


 int Free (int *) ;
 scalar_t__ is_textW (int *) ;

__attribute__((used)) static void COMBOEX_FreeText (CBE_ITEMDATA *item)
{
    if (is_textW(item->pszText)) Free(item->pszText);
    item->pszText = ((void*)0);
    Free(item->pszTemp);
    item->pszTemp = ((void*)0);
}
