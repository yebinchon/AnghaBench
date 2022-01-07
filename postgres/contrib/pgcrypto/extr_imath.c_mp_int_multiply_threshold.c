
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_word ;
typedef int mp_size ;


 int assert (int) ;
 int multiply_threshold ;

void
mp_int_multiply_threshold(mp_size thresh)
{
 assert(thresh >= sizeof(mp_word));
 multiply_threshold = thresh;
}
