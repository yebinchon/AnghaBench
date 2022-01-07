
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_2__ {scalar_t__ buffer; scalar_t__ ptr; int code; } ;


 int _T (char*) ;
 int _tcscmp (scalar_t__,int ) ;
 TYPE_1__ calc ;
 int convert_text2number_2 (int *) ;
 int rpn_copy (int *,int *) ;
 int rpn_zero (int *) ;

__attribute__((used)) static void convert_text2number(calc_number_t *a)
{


    if (calc.buffer == calc.ptr) {

        if (!_tcscmp(calc.buffer, _T("0.")) ||
            !_tcscmp(calc.buffer, _T("0")))

            rpn_zero(a);
        else
            rpn_copy(a, &calc.code);
        return;
    }

    rpn_zero(a);
    convert_text2number_2(a);
}
