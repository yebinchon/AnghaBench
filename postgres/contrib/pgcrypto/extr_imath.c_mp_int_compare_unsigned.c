
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mp_int ;


 int assert (int) ;
 int s_ucmp (int *,int *) ;

int
mp_int_compare_unsigned(mp_int a, mp_int b)
{
 assert(a != ((void*)0) && b != ((void*)0));

 return s_ucmp(a, b);
}
