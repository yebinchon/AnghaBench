
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Name ;


 int HPDF_Stream_WriteEscapeName (int ,int ) ;

HPDF_STATUS
HPDF_Name_Write (HPDF_Name obj,
                  HPDF_Stream stream)
{
    return HPDF_Stream_WriteEscapeName (stream, obj->value);
}
