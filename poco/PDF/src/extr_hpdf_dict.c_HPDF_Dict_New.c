
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int obj_class; } ;
struct TYPE_13__ {int list; int filter; int error; TYPE_2__* mmgr; TYPE_1__ header; } ;
struct TYPE_12__ {int error; } ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int HPDF_Dict_Rec ;
typedef TYPE_3__* HPDF_Dict ;


 int HPDF_DEF_ITEMS_PER_BLOCK ;
 int HPDF_FreeMem (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_List_New (TYPE_2__*,int ) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_DICT ;
 int HPDF_STREAM_FILTER_NONE ;

HPDF_Dict
HPDF_Dict_New (HPDF_MMgr mmgr)
{
    HPDF_Dict obj;

    obj = (HPDF_Dict)HPDF_GetMem (mmgr, sizeof(HPDF_Dict_Rec));
    if (obj) {
        HPDF_MemSet (obj, 0, sizeof(HPDF_Dict_Rec));
        obj->header.obj_class = HPDF_OCLASS_DICT;
        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->list = HPDF_List_New (mmgr, HPDF_DEF_ITEMS_PER_BLOCK);
        obj->filter = HPDF_STREAM_FILTER_NONE;
        if (!obj->list) {
            HPDF_FreeMem (mmgr, obj);
            obj = ((void*)0);
        }
    }

    return obj;
}
