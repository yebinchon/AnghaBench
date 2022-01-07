
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* pniels_t ;
typedef TYPE_3__* curve448_point_t ;
struct TYPE_8__ {int z; int t; int y; int x; } ;
struct TYPE_7__ {int z; TYPE_1__* n; } ;
struct TYPE_6__ {int c; int b; int a; } ;


 int TWISTED_D ;
 int gf_add (int ,int ,int ) ;
 int gf_mulw (int ,int ,int) ;
 int gf_sub (int ,int ,int ) ;

__attribute__((used)) static void pt_to_pniels(pniels_t b, const curve448_point_t a)
{
    gf_sub(b->n->a, a->y, a->x);
    gf_add(b->n->b, a->x, a->y);
    gf_mulw(b->n->c, a->t, 2 * TWISTED_D);
    gf_add(b->z, a->z, a->z);
}
