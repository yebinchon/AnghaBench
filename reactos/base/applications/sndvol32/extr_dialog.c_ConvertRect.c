
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_3__ {void* bottom; void* top; void* right; void* left; } ;
typedef TYPE_1__* LPRECT ;


 void* MulDiv (void*,int ,int) ;

VOID
ConvertRect(LPRECT lpRect, UINT xBaseUnit, UINT yBaseUnit)
{
    lpRect->left = MulDiv(lpRect->left, xBaseUnit, 4);
    lpRect->right = MulDiv(lpRect->right, xBaseUnit, 4);
    lpRect->top = MulDiv(lpRect->top, yBaseUnit, 8);
    lpRect->bottom = MulDiv(lpRect->bottom, yBaseUnit, 8);
}
