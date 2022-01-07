
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_result ;
typedef int * mp_int ;


 int assert (int) ;
 int s_brmu (int *,int *) ;

mp_result
mp_int_redux_const(mp_int m, mp_int c)
{
 assert(m != ((void*)0) && c != ((void*)0) && m != c);

 return s_brmu(c, m);
}
