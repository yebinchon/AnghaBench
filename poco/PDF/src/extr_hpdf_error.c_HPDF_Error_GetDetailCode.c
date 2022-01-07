
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int detail_no; } ;
typedef int HPDF_STATUS ;
typedef TYPE_1__* HPDF_Error ;



HPDF_STATUS
HPDF_Error_GetDetailCode (HPDF_Error error)
{
    return error->detail_no;
}
