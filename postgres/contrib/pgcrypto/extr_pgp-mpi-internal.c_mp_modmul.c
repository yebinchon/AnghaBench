
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;


 int mp_clear_free (int *) ;
 int mp_int_mod (int *,int *,int *) ;
 int mp_int_mul (int *,int *,int *) ;
 int * mp_new () ;

__attribute__((used)) static void
mp_modmul(mpz_t *a, mpz_t *b, mpz_t *p, mpz_t *res)
{
 mpz_t *tmp = mp_new();

 mp_int_mul(a, b, tmp);
 mp_int_mod(tmp, p, res);
 mp_clear_free(tmp);
}
