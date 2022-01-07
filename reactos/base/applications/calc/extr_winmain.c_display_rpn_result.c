
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_2__ {int buffer; int ptr; } ;
typedef int HWND ;


 TYPE_1__ calc ;
 int set_rpn_result (int ,int *) ;

__attribute__((used)) static void display_rpn_result(HWND hwnd, calc_number_t *rpn)
{
    set_rpn_result(hwnd, rpn);
    calc.ptr = calc.buffer;
}
