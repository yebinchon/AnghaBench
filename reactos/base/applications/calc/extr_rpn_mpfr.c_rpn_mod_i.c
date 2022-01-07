
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_10__ {int is_nan; } ;


 int TRUE ;
 TYPE_8__ calc ;
 scalar_t__ mpfr_sgn (int ) ;
 int mpz_tdiv_r ;
 int rpn_exec_int (TYPE_1__*,TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void rpn_mod_i(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    if (mpfr_sgn(b->mf) == 0)
        calc.is_nan = TRUE;
    else
        rpn_exec_int(r, a, b, mpz_tdiv_r);
}
