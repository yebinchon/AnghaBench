
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpz_t ;


 int mp_int_free (int *) ;

__attribute__((used)) static void
mp_clear_free(mpz_t *a)
{
 if (!a)
  return;

 mp_int_free(a);
}
