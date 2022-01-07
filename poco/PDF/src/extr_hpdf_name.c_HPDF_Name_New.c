
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int obj_class; } ;
struct TYPE_12__ {int error; } ;
struct TYPE_11__ {int error; TYPE_6__ header; } ;
typedef int HPDF_Obj_Header ;
typedef int HPDF_Name_Rec ;
typedef TYPE_1__* HPDF_Name ;
typedef TYPE_2__* HPDF_MMgr ;


 int HPDF_FreeMem (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_6__*,int ,int) ;
 scalar_t__ HPDF_NAME_INVALID_VALUE ;
 scalar_t__ HPDF_Name_SetValue (TYPE_1__*,char const*) ;
 int HPDF_OCLASS_NAME ;

HPDF_Name
HPDF_Name_New (HPDF_MMgr mmgr,
                const char *value)
{
    HPDF_Name obj;

    obj = HPDF_GetMem (mmgr, sizeof(HPDF_Name_Rec));

    if (obj) {
        HPDF_MemSet (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_NAME;
        obj->error = mmgr->error;
        if (HPDF_Name_SetValue (obj, value) == HPDF_NAME_INVALID_VALUE) {
            HPDF_FreeMem (mmgr, obj);
            return ((void*)0);
        }
    }

    return obj;
}
