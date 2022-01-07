
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; void** obj; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_List ;
typedef int HPDF_INT ;


 int HPDF_ITEM_NOT_FOUND ;
 int HPDF_List_Add (TYPE_1__*,void*) ;
 int HPDF_List_Find (TYPE_1__*,void*) ;
 int HPDF_PTRACE (char*) ;

HPDF_STATUS
HPDF_List_Insert (HPDF_List list,
                   void *target,
                   void *item)
{
    HPDF_INT target_idx = HPDF_List_Find (list, target);
    void *last_item = list->obj[list->count - 1];
    HPDF_INT i;

    HPDF_PTRACE((" HPDF_List_Insert\n"));

    if (target_idx < 0)
        return HPDF_ITEM_NOT_FOUND;


    for (i = list->count - 2; i >= target_idx; i--)
        list->obj[i + 1] = list->obj[i];

    list->obj[target_idx] = item;

    return HPDF_List_Add (list, last_item);
}
