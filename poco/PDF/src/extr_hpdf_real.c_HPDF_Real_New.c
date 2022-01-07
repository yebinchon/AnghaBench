
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int obj_class; } ;
struct TYPE_10__ {int error; } ;
struct TYPE_9__ {int error; TYPE_6__ header; } ;
typedef int HPDF_Real_Rec ;
typedef TYPE_1__* HPDF_Real ;
typedef int HPDF_REAL ;
typedef int HPDF_Obj_Header ;
typedef TYPE_2__* HPDF_MMgr ;


 TYPE_1__* HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_6__*,int ,int) ;
 int HPDF_OCLASS_REAL ;
 int HPDF_Real_SetValue (TYPE_1__*,int ) ;

HPDF_Real
HPDF_Real_New (HPDF_MMgr mmgr,
                HPDF_REAL value)
{
    HPDF_Real obj = HPDF_GetMem (mmgr, sizeof(HPDF_Real_Rec));

    if (obj) {
        HPDF_MemSet (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_REAL;
        obj->error = mmgr->error;
        HPDF_Real_SetValue (obj, value);
    }

    return obj;
}
