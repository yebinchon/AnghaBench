
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int * mp_int ;


 int assert (int) ;
 int s_tobin (int *,unsigned char*,int*,int const) ;

mp_result
mp_int_to_unsigned(mp_int z, unsigned char *buf, int limit)
{
 static const int NO_PADDING = 0;

 assert(z != ((void*)0) && buf != ((void*)0));

 return s_tobin(z, buf, &limit, NO_PADDING);
}
