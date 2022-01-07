
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;
typedef int * mp_int ;


 int mp_int_init (int *) ;
 int * px_alloc (int) ;

mp_int
mp_int_alloc(void)
{
 mp_int out = px_alloc(sizeof(mpz_t));

 if (out != ((void*)0))
  mp_int_init(out);

 return out;
}
