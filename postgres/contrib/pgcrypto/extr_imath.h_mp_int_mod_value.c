
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_small ;
typedef int mp_result ;
typedef int mp_int ;


 int mp_int_div_value (int ,int ,int ,int *) ;

__attribute__((used)) static inline
mp_result
mp_int_mod_value(mp_int a, mp_small value, mp_small *r)
{
 return mp_int_div_value(a, value, 0, r);
}
