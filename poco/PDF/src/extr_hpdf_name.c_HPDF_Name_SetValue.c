
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; int error; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Name ;


 scalar_t__ HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_NAME_INVALID_VALUE ;
 int HPDF_NAME_OUT_OF_RANGE ;
 int HPDF_OK ;
 int HPDF_SetError (int ,int ,int ) ;
 int HPDF_StrCpy (scalar_t__,char const*,scalar_t__) ;
 scalar_t__ HPDF_StrLen (char const*,scalar_t__) ;

HPDF_STATUS
HPDF_Name_SetValue (HPDF_Name obj,
                     const char *value)
{
    if (!value || value[0] == 0)
        return HPDF_SetError (obj->error, HPDF_NAME_INVALID_VALUE, 0);

    if (HPDF_StrLen (value, HPDF_LIMIT_MAX_NAME_LEN + 1) >
            HPDF_LIMIT_MAX_NAME_LEN)
        return HPDF_SetError (obj->error, HPDF_NAME_OUT_OF_RANGE, 0);

    HPDF_StrCpy (obj->value, value, obj->value + HPDF_LIMIT_MAX_NAME_LEN);

    return HPDF_OK;
}
