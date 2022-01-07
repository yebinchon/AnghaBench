
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* y; void* x; } ;
typedef TYPE_1__ HPDF_Point ;
typedef void* HPDF_INT16 ;



HPDF_Point
HPDF_ToPoint (HPDF_INT16 x,
               HPDF_INT16 y)
{
    HPDF_Point point;

    point.x = x;
    point.y = y;

    return point;
}
