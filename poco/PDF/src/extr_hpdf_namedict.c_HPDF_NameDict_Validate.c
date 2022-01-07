
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj_class; } ;
struct TYPE_5__ {int error; TYPE_1__ header; } ;
typedef TYPE_2__* HPDF_NameDict ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_INVALID_OBJECT ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_NAMEDICT ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_NameDict_Validate (HPDF_NameDict namedict)
{
    if (!namedict)
        return HPDF_FALSE;

    if (namedict->header.obj_class != (HPDF_OSUBCLASS_NAMEDICT |
                HPDF_OCLASS_DICT)) {
        HPDF_SetError (namedict->error, HPDF_INVALID_OBJECT, 0);
        return HPDF_FALSE;
    }

    return HPDF_TRUE;
}
