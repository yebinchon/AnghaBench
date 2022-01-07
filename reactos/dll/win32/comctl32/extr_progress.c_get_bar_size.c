
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int top; int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef int LONG ;


 int PBS_VERTICAL ;

__attribute__((used)) static inline int get_bar_size( LONG style, const RECT* rect )
{
    if (style & PBS_VERTICAL)
        return rect->bottom - rect->top;
    else
        return rect->right - rect->left;
}
