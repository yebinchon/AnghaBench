
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int f; } ;
typedef TYPE_1__ calc_number_t ;


 int modf (int,int*) ;
 int pow (int,int) ;

__attribute__((used)) static void rpn_shr_f(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    calc_number_t n;

    modf(b->f, &n.f);

    r->f = a->f / pow(2., n.f);
}
