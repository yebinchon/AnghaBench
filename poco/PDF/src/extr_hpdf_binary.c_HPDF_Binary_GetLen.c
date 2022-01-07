
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
typedef int HPDF_UINT ;
typedef TYPE_1__* HPDF_Binary ;



HPDF_UINT
HPDF_Binary_GetLen (HPDF_Binary obj)
{
    return obj->len;
}
