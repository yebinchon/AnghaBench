
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mask_t ;
typedef int gf ;
typedef TYPE_1__* curve448_point_t ;
typedef int c448_bool_t ;
struct TYPE_4__ {int x; int y; } ;


 int gf_eq (int ,int ) ;
 int gf_mul (int ,int ,int ) ;
 int mask_to_bool (int ) ;

c448_bool_t curve448_point_eq(const curve448_point_t p,
                              const curve448_point_t q)
{
    mask_t succ;
    gf a, b;


    gf_mul(a, p->y, q->x);
    gf_mul(b, q->y, p->x);
    succ = gf_eq(a, b);

    return mask_to_bool(succ);
}
