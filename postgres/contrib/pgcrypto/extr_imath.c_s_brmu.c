
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_size ;
typedef int mp_result ;
typedef int mp_int ;


 int MP_DIGIT_BIT ;
 int MP_MEMORY ;
 int MP_USED (int ) ;
 int mp_int_div (int ,int ,int ,int *) ;
 int s_2expt (int ,int) ;
 int s_pad (int ,int) ;

__attribute__((used)) static mp_result
s_brmu(mp_int z, mp_int m)
{
 mp_size um = MP_USED(m) * 2;

 if (!s_pad(z, um))
  return MP_MEMORY;

 s_2expt(z, MP_DIGIT_BIT * um);
 return mp_int_div(z, m, z, ((void*)0));
}
