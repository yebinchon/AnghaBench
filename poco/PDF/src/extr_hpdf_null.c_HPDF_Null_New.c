
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obj_class; } ;
struct TYPE_5__ {TYPE_3__ header; } ;
typedef int HPDF_Obj_Header ;
typedef int HPDF_Null_Rec ;
typedef TYPE_1__* HPDF_Null ;
typedef int HPDF_MMgr ;


 TYPE_1__* HPDF_GetMem (int ,int) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_NULL ;

HPDF_Null
HPDF_Null_New (HPDF_MMgr mmgr)
{
    HPDF_Null obj = HPDF_GetMem (mmgr, sizeof(HPDF_Null_Rec));

    if (obj) {
        HPDF_MemSet (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_NULL;
    }

    return obj;
}
