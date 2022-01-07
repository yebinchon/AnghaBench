
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj_class; } ;
struct TYPE_6__ {int error; TYPE_1__ header; } ;
typedef int HPDF_STATUS ;
typedef TYPE_2__* HPDF_ExtGState ;


 int HPDF_EXT_GSTATE_READ_ONLY ;
 int HPDF_ExtGState_Validate (TYPE_2__*) ;
 int HPDF_INVALID_OBJECT ;
 int HPDF_OCLASS_DICT ;
 int HPDF_OK ;
 int HPDF_OSUBCLASS_EXT_GSTATE_R ;
 int HPDF_RaiseError (int ,int ,int ) ;

HPDF_STATUS
ExtGState_Check (HPDF_ExtGState ext_gstate)
{
    if (!HPDF_ExtGState_Validate (ext_gstate))
        return HPDF_INVALID_OBJECT;

    if (ext_gstate->header.obj_class ==
            (HPDF_OSUBCLASS_EXT_GSTATE_R | HPDF_OCLASS_DICT))
        return HPDF_RaiseError (ext_gstate->error, HPDF_EXT_GSTATE_READ_ONLY,
                0);

    return HPDF_OK;
}
