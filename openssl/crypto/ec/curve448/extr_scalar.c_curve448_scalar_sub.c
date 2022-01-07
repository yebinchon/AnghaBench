
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* curve448_scalar_t ;
struct TYPE_7__ {int limb; } ;


 int sc_p ;
 int sc_subx (TYPE_1__*,int ,TYPE_1__* const,int ,int ) ;

void curve448_scalar_sub(curve448_scalar_t out, const curve448_scalar_t a,
                         const curve448_scalar_t b)
{
    sc_subx(out, a->limb, b, sc_p, 0);
}
