
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* top; void* right; void* bottom; void* left; } ;
typedef void* HPDF_INT16 ;
typedef TYPE_1__ HPDF_Box ;



HPDF_Box
HPDF_ToBox (HPDF_INT16 left,
             HPDF_INT16 bottom,
             HPDF_INT16 right,
             HPDF_INT16 top)
{
    HPDF_Box box;

    box.left = left;
    box.bottom = bottom;
    box.right = right;
    box.top = top;

    return box;
}
