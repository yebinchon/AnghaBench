
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mp_int ;


 int assert (int ) ;
 int s_isp2 (int *) ;

int
mp_int_is_pow2(mp_int z)
{
 assert(z != ((void*)0));

 return s_isp2(z);
}
