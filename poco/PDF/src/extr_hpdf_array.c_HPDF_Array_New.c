
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int obj_class; } ;
struct TYPE_14__ {int list; int error; TYPE_2__* mmgr; TYPE_1__ header; } ;
struct TYPE_13__ {int error; } ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int HPDF_Array_Rec ;
typedef TYPE_3__* HPDF_Array ;


 int HPDF_DEF_ITEMS_PER_BLOCK ;
 int HPDF_FreeMem (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_List_New (TYPE_2__*,int ) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_ARRAY ;
 int HPDF_PTRACE (char*) ;

HPDF_Array
HPDF_Array_New (HPDF_MMgr mmgr)
{
    HPDF_Array obj;

    HPDF_PTRACE((" HPDF_Array_New\n"));

    obj = HPDF_GetMem (mmgr, sizeof(HPDF_Array_Rec));
    if (obj) {
        HPDF_MemSet (obj, 0, sizeof(HPDF_Array_Rec));
        obj->header.obj_class = HPDF_OCLASS_ARRAY;
        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->list = HPDF_List_New (mmgr, HPDF_DEF_ITEMS_PER_BLOCK);
        if (!obj->list) {
            HPDF_FreeMem (mmgr, obj);
            obj = ((void*)0);
        }
    }

    return obj;
}
