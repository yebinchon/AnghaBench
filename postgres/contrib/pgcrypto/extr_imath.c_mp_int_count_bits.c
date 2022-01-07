
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_size ;
typedef int mp_result ;
typedef TYPE_1__* mp_int ;
typedef int mp_digit ;
struct TYPE_4__ {scalar_t__* digits; } ;


 int MP_DIGIT_BIT ;
 int MP_USED (TYPE_1__*) ;
 int assert (int ) ;

mp_result
mp_int_count_bits(mp_int z)
{
 assert(z != ((void*)0));

 mp_size uz = MP_USED(z);

 if (uz == 1 && z->digits[0] == 0)
  return 1;

 --uz;
 mp_size nbits = uz * MP_DIGIT_BIT;
 mp_digit d = z->digits[uz];

 while (d != 0)
 {
  d >>= 1;
  ++nbits;
 }

 return nbits;
}
