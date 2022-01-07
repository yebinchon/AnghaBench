
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * obj; scalar_t__ count; scalar_t__ block_siz; int mmgr; } ;
typedef TYPE_1__* HPDF_List ;


 int HPDF_FreeMem (int ,int *) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_List_Clear (HPDF_List list)
{
    HPDF_PTRACE((" HPDF_List_Clear\n"));

    if (list->obj)
        HPDF_FreeMem (list->mmgr, list->obj);

    list->block_siz = 0;
    list->count = 0;
    list->obj = ((void*)0);
}
