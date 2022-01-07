
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;


 int * mp_int_alloc () ;
 int mp_int_init_size (int *,int) ;

__attribute__((used)) static mpz_t *
mp_new()
{
 mpz_t *mp = mp_int_alloc();

 mp_int_init_size(mp, 256);
 return mp;
}
