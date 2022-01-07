
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int * mp_int ;


 scalar_t__ MP_NEG ;
 scalar_t__ MP_SIGN (int *) ;
 int assert (int) ;
 int s_2comp (unsigned char*,int) ;
 int s_tobin (int *,unsigned char*,int*,int const) ;

mp_result
mp_int_to_binary(mp_int z, unsigned char *buf, int limit)
{
 static const int PAD_FOR_2C = 1;

 assert(z != ((void*)0) && buf != ((void*)0));

 int limpos = limit;
 mp_result res = s_tobin(z, buf, &limpos, PAD_FOR_2C);

 if (MP_SIGN(z) == MP_NEG)
  s_2comp(buf, limpos);

 return res;
}
