
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
typedef TYPE_1__* HPDF_Number ;
typedef int HPDF_INT32 ;



void
HPDF_Number_SetValue (HPDF_Number obj,
                       HPDF_INT32 value)
{
    obj->value =value;
}
