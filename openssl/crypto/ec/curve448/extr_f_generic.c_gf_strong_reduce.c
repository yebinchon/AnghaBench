
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ word_t ;
typedef TYPE_1__* gf ;
typedef int dword_t ;
typedef int dsword_t ;
struct TYPE_6__ {scalar_t__* limb; } ;
struct TYPE_5__ {int* limb; } ;


 size_t LIMBPERM (unsigned int) ;
 int LIMB_MASK (size_t) ;
 int LIMB_PLACE_VALUE (size_t) ;
 TYPE_4__* MODULUS ;
 unsigned int NLIMBS ;
 int assert (int) ;
 int gf_weak_reduce (TYPE_1__*) ;

void gf_strong_reduce(gf a)
{
    dsword_t scarry;
    word_t scarry_0;
    dword_t carry = 0;
    unsigned int i;


    gf_weak_reduce(a);




    scarry = 0;
    for (i = 0; i < NLIMBS; i++) {
        scarry = scarry + a->limb[LIMBPERM(i)] - MODULUS->limb[LIMBPERM(i)];
        a->limb[LIMBPERM(i)] = scarry & LIMB_MASK(LIMBPERM(i));
        scarry >>= LIMB_PLACE_VALUE(LIMBPERM(i));
    }






    assert(scarry == 0 || scarry == -1);

    scarry_0 = (word_t)scarry;


    for (i = 0; i < NLIMBS; i++) {
        carry =
            carry + a->limb[LIMBPERM(i)] +
            (scarry_0 & MODULUS->limb[LIMBPERM(i)]);
        a->limb[LIMBPERM(i)] = carry & LIMB_MASK(LIMBPERM(i));
        carry >>= LIMB_PLACE_VALUE(LIMBPERM(i));
    }

    assert(carry < 2 && ((word_t)carry + scarry_0) == 0);
}
