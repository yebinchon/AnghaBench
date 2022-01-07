
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {int value; TYPE_3__ header; } ;
typedef int HPDF_Obj_Header ;
typedef int HPDF_Number_Rec ;
typedef TYPE_1__* HPDF_Number ;
typedef int HPDF_MMgr ;
typedef int HPDF_INT32 ;


 TYPE_1__* HPDF_GetMem (int ,int) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_NUMBER ;

HPDF_Number
HPDF_Number_New (HPDF_MMgr mmgr,
                  HPDF_INT32 value)
{
    HPDF_Number obj = HPDF_GetMem (mmgr, sizeof(HPDF_Number_Rec));

    if (obj) {
        HPDF_MemSet (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_NUMBER;
        obj->value = value;
    }

    return obj;
}
