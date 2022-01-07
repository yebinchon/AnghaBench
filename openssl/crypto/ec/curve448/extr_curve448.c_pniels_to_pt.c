
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pniels_t ;
typedef int gf ;
typedef TYPE_3__* curve448_point_t ;
struct TYPE_8__ {int z; int y; int x; int t; } ;
struct TYPE_7__ {int z; TYPE_1__* n; } ;
struct TYPE_6__ {int a; int b; } ;


 int gf_add (int ,int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int gf_sqr (int ,int ) ;
 int gf_sub (int ,int ,int ) ;

__attribute__((used)) static void pniels_to_pt(curve448_point_t e, const pniels_t d)
{
    gf eu;

    gf_add(eu, d->n->b, d->n->a);
    gf_sub(e->y, d->n->b, d->n->a);
    gf_mul(e->t, e->y, eu);
    gf_mul(e->x, d->z, e->y);
    gf_mul(e->y, d->z, eu);
    gf_sqr(e->z, d->z);
}
