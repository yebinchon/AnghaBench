
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj_class; } ;
struct TYPE_5__ {int error; TYPE_1__ header; } ;
typedef TYPE_2__* HPDF_NameTree ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_INVALID_OBJECT ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_NAMETREE ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_NameTree_Validate (HPDF_NameTree nametree)
{
    if (!nametree)
        return HPDF_FALSE;

    if (nametree->header.obj_class != (HPDF_OSUBCLASS_NAMETREE |
                HPDF_OCLASS_DICT)) {
        HPDF_SetError (nametree->error, HPDF_INVALID_OBJECT, 0);
        return HPDF_FALSE;
    }

    return HPDF_TRUE;
}
