
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int obj_class; } ;
struct TYPE_11__ {int error; } ;
struct TYPE_10__ {TYPE_2__* mmgr; scalar_t__ len; int * value; int encoder; int error; TYPE_6__ header; } ;
typedef int HPDF_String_Rec ;
typedef TYPE_1__* HPDF_String ;
typedef int HPDF_Obj_Header ;
typedef TYPE_2__* HPDF_MMgr ;
typedef int HPDF_Encoder ;


 int HPDF_FreeMem (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ HPDF_GetMem (TYPE_2__*,int) ;
 int HPDF_MemSet (TYPE_6__*,int ,int) ;
 int HPDF_OCLASS_STRING ;
 scalar_t__ HPDF_OK ;
 int HPDF_PTRACE (char*) ;
 scalar_t__ HPDF_String_SetValue (TYPE_1__*,char const*) ;

HPDF_String
HPDF_String_New (HPDF_MMgr mmgr,
                  const char *value,
                  HPDF_Encoder encoder)
{
    HPDF_String obj;

    HPDF_PTRACE((" HPDF_String_New\n"));

    obj = (HPDF_String)HPDF_GetMem (mmgr, sizeof(HPDF_String_Rec));
    if (obj) {
        HPDF_MemSet (&obj->header, 0, sizeof(HPDF_Obj_Header));
        obj->header.obj_class = HPDF_OCLASS_STRING;

        obj->mmgr = mmgr;
        obj->error = mmgr->error;
        obj->encoder = encoder;
        obj->value = ((void*)0);
        obj->len = 0;

        if (HPDF_String_SetValue (obj, value) != HPDF_OK) {
            HPDF_FreeMem (obj->mmgr, obj);
            return ((void*)0);
        }
    }

    return obj;
}
