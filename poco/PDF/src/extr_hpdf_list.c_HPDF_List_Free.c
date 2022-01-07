
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mmgr; } ;
typedef TYPE_1__* HPDF_List ;


 int HPDF_FreeMem (int ,TYPE_1__*) ;
 int HPDF_List_Clear (TYPE_1__*) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_List_Free (HPDF_List list)
{
    HPDF_PTRACE((" HPDF_List_Free\n"));

    if (!list)
        return ;

    HPDF_List_Clear (list);
    HPDF_FreeMem (list->mmgr, list);
}
