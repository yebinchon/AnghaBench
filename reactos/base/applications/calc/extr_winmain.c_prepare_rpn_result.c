
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int calc_number_t ;
struct TYPE_2__ {int hInstance; int code; scalar_t__ is_nan; } ;
typedef int TCHAR ;


 int IDS_MATH_ERROR ;
 int LoadString (int ,int ,int *,int) ;
 TYPE_1__ calc ;
 int prepare_rpn_result_2 (int *,int *,int,int) ;
 int rpn_zero (int *) ;

__attribute__((used)) static void prepare_rpn_result(calc_number_t *rpn, TCHAR *buffer, int size, int base)
{
    if (calc.is_nan) {
        rpn_zero(&calc.code);
        LoadString(calc.hInstance, IDS_MATH_ERROR, buffer, size);
        return;
    }
    prepare_rpn_result_2(rpn, buffer, size, base);
}
