
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mpz_t ;
struct TYPE_3__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_get_z (int ,int ,int ) ;
 int mpfr_set_z (int ,int ,int ) ;
 int mpz_clear (int ) ;
 int mpz_com (int ,int ) ;
 int mpz_init (int ) ;

void rpn_not(calc_number_t *c)
{
    mpz_t a;

    mpz_init(a);
    mpfr_get_z(a, c->mf, MPFR_DEFAULT_RND);
    mpz_com(a, a);
    mpfr_set_z(c->mf, a, MPFR_DEFAULT_RND);
    mpz_clear(a);
}
