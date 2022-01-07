
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ mask_t ;
typedef TYPE_1__* gf ;
struct TYPE_7__ {int* limb; } ;


 int gf_add (TYPE_1__*,TYPE_1__* const,TYPE_1__* const) ;
 int gf_strong_reduce (TYPE_1__*) ;

mask_t gf_hibit(const gf x)
{
    gf y;

    gf_add(y, x, x);
    gf_strong_reduce(y);
    return 0 - (y->limb[0] & 1);
}
