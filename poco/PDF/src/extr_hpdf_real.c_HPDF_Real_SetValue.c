
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; int error; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Real ;
typedef scalar_t__ HPDF_REAL ;


 scalar_t__ HPDF_LIMIT_MAX_REAL ;
 scalar_t__ HPDF_LIMIT_MIN_REAL ;
 int HPDF_OK ;
 int HPDF_REAL_OUT_OF_RANGE ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_Real_SetValue (HPDF_Real obj,
                     HPDF_REAL value)
{
    HPDF_STATUS ret = HPDF_OK;

    if (value > HPDF_LIMIT_MAX_REAL)
        return HPDF_SetError (obj->error, HPDF_REAL_OUT_OF_RANGE, 0);

    if (value < HPDF_LIMIT_MIN_REAL)
        return HPDF_SetError (obj->error, HPDF_REAL_OUT_OF_RANGE, 0);

    obj->value =value;

    return ret;
}
