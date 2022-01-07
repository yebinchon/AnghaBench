
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* niels_t ;
typedef int gf ;
typedef TYPE_2__* curve448_point_t ;
struct TYPE_6__ {int t; int y; int x; int z; } ;
struct TYPE_5__ {int c; int a; int b; } ;


 int gf_add_nr (int ,int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int gf_sub_nr (int ,int ,int ) ;

__attribute__((used)) static void sub_niels_from_pt(curve448_point_t d, const niels_t e,
                              int before_double)
{
    gf a, b, c;

    gf_sub_nr(b, d->y, d->x);
    gf_mul(a, e->b, b);
    gf_add_nr(b, d->x, d->y);
    gf_mul(d->y, e->a, b);
    gf_mul(d->x, e->c, d->t);
    gf_add_nr(c, a, d->y);
    gf_sub_nr(b, d->y, a);
    gf_add_nr(d->y, d->z, d->x);
    gf_sub_nr(a, d->z, d->x);
    gf_mul(d->z, a, d->y);
    gf_mul(d->x, d->y, b);
    gf_mul(d->y, a, c);
    if (!before_double)
        gf_mul(d->t, b, c);
}
