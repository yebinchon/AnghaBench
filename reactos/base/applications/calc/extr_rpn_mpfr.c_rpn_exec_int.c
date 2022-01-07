
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpz_t ;
typedef int (* exec_call_t ) (int ,int ,int ) ;
struct TYPE_5__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;


 int MPFR_DEFAULT_RND ;
 int mpfr_get_z (int ,int ,int ) ;
 int mpfr_set_z (int ,int ,int ) ;
 int mpz_clear (int ) ;
 int mpz_init (int ) ;

__attribute__((used)) static void rpn_exec_int(calc_number_t *r, calc_number_t *a, calc_number_t *b, exec_call_t cb)
{
    mpz_t ai, bi;

    mpz_init(ai);
    mpz_init(bi);
    mpfr_get_z(ai, a->mf, MPFR_DEFAULT_RND);
    mpfr_get_z(bi, b->mf, MPFR_DEFAULT_RND);
    cb(ai, ai, bi);
    mpfr_set_z(r->mf, ai, MPFR_DEFAULT_RND);
    mpz_clear(ai);
    mpz_clear(bi);
}
