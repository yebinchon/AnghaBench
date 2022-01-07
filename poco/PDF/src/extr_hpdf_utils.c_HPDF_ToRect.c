
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* top; void* right; void* bottom; void* left; } ;
typedef TYPE_1__ HPDF_Rect ;
typedef void* HPDF_REAL ;



HPDF_Rect
HPDF_ToRect (HPDF_REAL left,
              HPDF_REAL bottom,
              HPDF_REAL right,
              HPDF_REAL top)
{
    HPDF_Rect rect;

    rect.left = left;
    rect.bottom = bottom;
    rect.right = right;
    rect.top = top;

    return rect;
}
