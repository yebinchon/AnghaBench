
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Real ;


 int HPDF_Stream_WriteReal (int ,int ) ;

HPDF_STATUS
HPDF_Real_Write (HPDF_Real obj,
                  HPDF_Stream stream)
{
    return HPDF_Stream_WriteReal (stream, obj->value);
}
