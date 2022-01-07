
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int obj_class; } ;
struct TYPE_12__ {scalar_t__ len; int * value; int error; TYPE_1__* mmgr; TYPE_3__ header; } ;
struct TYPE_11__ {int error; } ;
typedef int HPDF_UINT ;
typedef int HPDF_Obj_Header ;
typedef TYPE_1__* HPDF_MMgr ;
typedef int HPDF_Binary_Rec ;
typedef TYPE_2__* HPDF_Binary ;
typedef int HPDF_BYTE ;


 scalar_t__ HPDF_Binary_SetValue (TYPE_2__*,int *,int ) ;
 int HPDF_FreeMem (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* HPDF_GetMem (TYPE_1__*,int) ;
 int HPDF_MemSet (TYPE_3__*,int ,int) ;
 int HPDF_OCLASS_BINARY ;
 scalar_t__ HPDF_OK ;

HPDF_Binary
HPDF_Binary_New (HPDF_MMgr mmgr,
                  HPDF_BYTE *value,
                  HPDF_UINT len)
{
    HPDF_Binary obj;

    obj = HPDF_GetMem (mmgr, sizeof(HPDF_Binary_Rec));

    if (obj) {
        HPDF_MemSet(&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_BINARY;

        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->value = ((void*)0);
        obj->len = 0;
        if (HPDF_Binary_SetValue (obj, value, len) != HPDF_OK) {
            HPDF_FreeMem (mmgr, obj);
            return ((void*)0);
        }
    }

    return obj;
}
