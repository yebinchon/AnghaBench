
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ obj_class; } ;
struct TYPE_7__ {int mmgr; TYPE_1__ header; int list; } ;
typedef TYPE_2__* HPDF_Array ;


 int HPDF_Array_Clear (TYPE_2__*) ;
 int HPDF_FreeMem (int ,TYPE_2__*) ;
 int HPDF_List_Free (int ) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_Array_Free (HPDF_Array array)
{
    if (!array)
        return;

    HPDF_PTRACE((" HPDF_Array_Free\n"));

    HPDF_Array_Clear (array);

    HPDF_List_Free (array->list);

    array->header.obj_class = 0;

    HPDF_FreeMem (array->mmgr, array);
}
