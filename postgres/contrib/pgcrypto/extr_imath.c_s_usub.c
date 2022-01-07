
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef scalar_t__ mp_size ;
typedef scalar_t__ mp_digit ;


 scalar_t__ LOWER_HALF (int) ;
 scalar_t__ MP_DIGIT_MAX ;
 scalar_t__ UPPER_HALF (int) ;
 int assert (int) ;

__attribute__((used)) static void
s_usub(mp_digit *da, mp_digit *db, mp_digit *dc, mp_size size_a,
    mp_size size_b)
{
 mp_size pos;
 mp_word w = 0;


 assert(size_a >= size_b);


 for (pos = 0; pos < size_b; ++pos, ++da, ++db, ++dc)
 {
  w = ((mp_word) MP_DIGIT_MAX + 1 +
    (mp_word) *da) -
   w - (mp_word) *db;

  *dc = LOWER_HALF(w);
  w = (UPPER_HALF(w) == 0);
 }


 for ( ; pos < size_a; ++pos, ++da, ++dc)
 {
  w = ((mp_word) MP_DIGIT_MAX + 1 +
    (mp_word) *da) -
   w;

  *dc = LOWER_HALF(w);
  w = (UPPER_HALF(w) == 0);
 }


 assert(w == 0);
}
