
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * obj; scalar_t__ count; scalar_t__ items_per_block; scalar_t__ block_siz; int error; TYPE_1__* mmgr; } ;
struct TYPE_6__ {int error; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int HPDF_List_Rec ;
typedef TYPE_2__* HPDF_List ;


 scalar_t__ HPDF_DEF_ITEMS_PER_BLOCK ;
 scalar_t__ HPDF_GetMem (TYPE_1__*,int) ;
 int HPDF_PTRACE (char*) ;

HPDF_List
HPDF_List_New (HPDF_MMgr mmgr,
                HPDF_UINT items_per_block)
{
    HPDF_List list;

    HPDF_PTRACE((" HPDF_List_New\n"));

    if (mmgr == ((void*)0))
        return ((void*)0);

    list = (HPDF_List)HPDF_GetMem (mmgr, sizeof(HPDF_List_Rec));
    if (list) {
        list->mmgr = mmgr;
        list->error = mmgr->error;
        list->block_siz = 0;
        list->items_per_block =
            (items_per_block <= 0 ? HPDF_DEF_ITEMS_PER_BLOCK : items_per_block);
        list->count = 0;
        list->obj = ((void*)0);
    }

    return list;
}
