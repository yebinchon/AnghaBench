
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_small ;
typedef int mp_int ;


 scalar_t__ MP_OK ;
 scalar_t__ mp_int_div_value (int ,scalar_t__,int *,scalar_t__*) ;

bool
mp_int_divisible_value(mp_int a, mp_small v)
{
 mp_small rem = 0;

 if (mp_int_div_value(a, v, ((void*)0), &rem) != MP_OK)
 {
  return 0;
 }
 return rem == 0;
}
