
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ value; int error; int mmgr; } ;
typedef scalar_t__ HPDF_UINT ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Binary ;
typedef int HPDF_BYTE ;


 int HPDF_BINARY_LENGTH_ERR ;
 int HPDF_Error_GetCode (int ) ;
 int HPDF_FreeMem (int ,scalar_t__) ;
 scalar_t__ HPDF_GetMem (int ,scalar_t__) ;
 scalar_t__ HPDF_LIMIT_MAX_STRING_LEN ;
 int HPDF_MemCpy (scalar_t__,int *,scalar_t__) ;
 int HPDF_OK ;
 int HPDF_SetError (int ,int ,int ) ;

HPDF_STATUS
HPDF_Binary_SetValue (HPDF_Binary obj,
                       HPDF_BYTE *value,
                       HPDF_UINT len)
{
    if (len > HPDF_LIMIT_MAX_STRING_LEN)
        return HPDF_SetError (obj->error, HPDF_BINARY_LENGTH_ERR, 0);

    if (obj->value) {
        HPDF_FreeMem (obj->mmgr, obj->value);
        obj->len = 0;
    }

    obj->value = HPDF_GetMem (obj->mmgr, len);
    if (!obj->value)
        return HPDF_Error_GetCode (obj->error);

    HPDF_MemCpy (obj->value, value, len);
    obj->len = len;

    return HPDF_OK;
}
