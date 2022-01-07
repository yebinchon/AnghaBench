
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mp_small ;
typedef int mp_size ;
typedef TYPE_1__* mp_int ;
typedef unsigned int mp_digit ;
struct TYPE_5__ {int used; } ;


 unsigned int* MP_DIGITS (TYPE_1__*) ;
 int MP_DIGIT_BIT ;
 int ZERO (unsigned int*,int) ;
 int s_pad (TYPE_1__*,int) ;

__attribute__((used)) static int
s_2expt(mp_int z, mp_small k)
{
 mp_size ndig,
    rest;
 mp_digit *dz;

 ndig = (k + MP_DIGIT_BIT) / MP_DIGIT_BIT;
 rest = k % MP_DIGIT_BIT;

 if (!s_pad(z, ndig))
  return 0;

 dz = MP_DIGITS(z);
 ZERO(dz, ndig);
 *(dz + ndig - 1) = (1u << rest);
 z->used = ndig;

 return 1;
}
