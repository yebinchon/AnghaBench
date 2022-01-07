
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int mask_t ;
typedef TYPE_1__* gf ;
struct TYPE_8__ {int * limb; } ;


 size_t LIMBPERM (unsigned int) ;
 unsigned int NLIMBS ;
 int gf_strong_reduce (TYPE_1__*) ;
 int gf_sub (TYPE_1__*,TYPE_1__* const,TYPE_1__* const) ;
 int word_is_zero (int ) ;

mask_t gf_eq(const gf a, const gf b)
{
    gf c;
    mask_t ret = 0;
    unsigned int i;

    gf_sub(c, a, b);
    gf_strong_reduce(c);

    for (i = 0; i < NLIMBS; i++)
        ret |= c->limb[LIMBPERM(i)];

    return word_is_zero(ret);
}
