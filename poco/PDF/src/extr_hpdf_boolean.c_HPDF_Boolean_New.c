
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {int value; TYPE_2__ header; } ;
typedef int HPDF_Obj_Header ;
typedef int HPDF_MMgr ;
typedef int HPDF_Boolean_Rec ;
typedef TYPE_1__* HPDF_Boolean ;
typedef int HPDF_BOOL ;


 TYPE_1__* HPDF_GetMem (int ,int) ;
 int HPDF_MemSet (TYPE_2__*,int ,int) ;
 int HPDF_OCLASS_BOOLEAN ;

HPDF_Boolean
HPDF_Boolean_New (HPDF_MMgr mmgr,
                   HPDF_BOOL value)
{
    HPDF_Boolean obj = HPDF_GetMem (mmgr, sizeof(HPDF_Boolean_Rec));

    if (obj) {
        HPDF_MemSet(&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_BOOLEAN;
        obj->value = value;
    }

    return obj;
}
