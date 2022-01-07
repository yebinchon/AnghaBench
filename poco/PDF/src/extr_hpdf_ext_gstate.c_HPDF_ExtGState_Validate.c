
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obj_class; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
typedef TYPE_2__* HPDF_ExtGState ;
typedef int HPDF_BOOL ;


 int HPDF_FALSE ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OSUBCLASS_EXT_GSTATE ;
 int HPDF_OSUBCLASS_EXT_GSTATE_R ;
 int HPDF_TRUE ;

HPDF_BOOL
HPDF_ExtGState_Validate (HPDF_ExtGState ext_gstate)
{
    if (!ext_gstate || (ext_gstate->header.obj_class !=
                (HPDF_OSUBCLASS_EXT_GSTATE | HPDF_OCLASS_DICT) &&
                ext_gstate->header.obj_class !=
                 (HPDF_OSUBCLASS_EXT_GSTATE_R | HPDF_OCLASS_DICT)))
        return HPDF_FALSE;

    return HPDF_TRUE;
}
