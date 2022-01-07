
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; scalar_t__ block_siz; scalar_t__ items_per_block; void** obj; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__* HPDF_List ;


 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ Resize (TYPE_1__*,scalar_t__) ;

HPDF_STATUS
HPDF_List_Add (HPDF_List list,
                void *item)
{
    HPDF_PTRACE((" HPDF_List_Add\n"));

    if (list->count >= list->block_siz) {
        HPDF_STATUS ret = Resize (list,
                list->block_siz + list->items_per_block);

        if (ret != HPDF_OK) {
            return ret;
        }
    }

    list->obj[list->count++] = item;
    return HPDF_OK;
}
