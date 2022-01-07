
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int value; } ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef scalar_t__ HPDF_Encrypt ;
typedef TYPE_1__* HPDF_Binary ;


 int HPDF_Encrypt_Reset (scalar_t__) ;
 int HPDF_OK ;
 int HPDF_Stream_WriteBinary (int ,int ,scalar_t__,scalar_t__) ;
 int HPDF_Stream_WriteChar (int ,char) ;
 int HPDF_Stream_WriteStr (int ,char*) ;

HPDF_STATUS
HPDF_Binary_Write (HPDF_Binary obj,
                    HPDF_Stream stream,
                    HPDF_Encrypt e)
{
    HPDF_STATUS ret;

    if (obj->len == 0)
        return HPDF_Stream_WriteStr (stream, "<>");

    if ((ret = HPDF_Stream_WriteChar (stream, '<')) != HPDF_OK)
        return ret;

    if (e)
        HPDF_Encrypt_Reset (e);

    if ((ret = HPDF_Stream_WriteBinary (stream, obj->value, obj->len, e)) !=
                    HPDF_OK)
        return ret;

    return HPDF_Stream_WriteChar (stream, '>');
}
