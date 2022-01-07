
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int f; } ;
typedef TYPE_1__ calc_number_t ;



__attribute__((used)) static void rpn_mul_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    r->f = a->f * b->f;
}
