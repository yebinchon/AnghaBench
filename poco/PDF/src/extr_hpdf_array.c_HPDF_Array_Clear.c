
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_5__ {TYPE_2__* list; int mmgr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef TYPE_1__* HPDF_Array ;


 int HPDF_List_Clear (TYPE_2__*) ;
 void* HPDF_List_ItemAt (TYPE_2__*,scalar_t__) ;
 int HPDF_Obj_Free (int ,void*) ;
 int HPDF_PTRACE (char*) ;

void
HPDF_Array_Clear (HPDF_Array array)
{
    HPDF_UINT i;

    HPDF_PTRACE((" HPDF_Array_Clear\n"));

    if (!array)
        return;

    for (i = 0; i < array->list->count; i++) {
        void * obj = HPDF_List_ItemAt (array->list, i);

        if (obj) {
            HPDF_Obj_Free (array->mmgr, obj);
        }
    }

    HPDF_List_Clear (array->list);
}
