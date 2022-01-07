
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int f; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_7__ {int is_nan; } ;


 int TRUE ;
 scalar_t__ _finite (int ) ;
 scalar_t__ _isnan (int ) ;
 TYPE_5__ calc ;
 int pow (int ,int ) ;

__attribute__((used)) static void rpn_pow_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    r->f = pow(a->f, b->f);
    if (_finite(r->f) == 0 || _isnan(r->f))
        calc.is_nan = TRUE;
}
