
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ value; } ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Boolean ;


 int HPDF_Stream_WriteStr (int ,char*) ;

HPDF_STATUS
HPDF_Boolean_Write (HPDF_Boolean obj,
                     HPDF_Stream stream)
{
    HPDF_STATUS ret;

    if (obj->value)
        ret = HPDF_Stream_WriteStr (stream, "true");
    else
        ret = HPDF_Stream_WriteStr (stream, "false");

    return ret;
}
