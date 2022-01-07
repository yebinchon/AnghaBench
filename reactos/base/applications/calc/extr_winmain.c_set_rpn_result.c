
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_2__ {scalar_t__ buffer; scalar_t__ ptr; int base; int sci_in; } ;
typedef int HWND ;


 int FALSE ;
 int SIZEOF (scalar_t__) ;
 scalar_t__ _tcslen (scalar_t__) ;
 TYPE_1__ calc ;
 int prepare_rpn_result (int *,scalar_t__,int ,int ) ;
 int update_lcd_display (int ) ;
 int update_parent_display (int ) ;

__attribute__((used)) static void set_rpn_result(HWND hwnd, calc_number_t *rpn)
{
    calc.sci_in = FALSE;
    prepare_rpn_result(rpn, calc.buffer, SIZEOF(calc.buffer), calc.base);
    calc.ptr = calc.buffer + _tcslen(calc.buffer);
    update_lcd_display(hwnd);
    update_parent_display(hwnd);
}
