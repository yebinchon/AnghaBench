
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;


 int add_window_borders (int ,TYPE_1__*) ;

__attribute__((used)) static void subtract_window_borders(HWND hwnd, RECT *rc)
{
    RECT b = { 0, 0, 0, 0 };
    add_window_borders(hwnd, &b);
    rc->left -= b.left;
    rc->top -= b.top;
    rc->right -= b.right;
    rc->bottom -= b.bottom;
}
