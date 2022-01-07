
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpz_t ;
struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {int size; } ;






 int MPFR_DEFAULT_RND ;
 TYPE_2__ calc ;
 int mpfr_get_z (int ,int ,int ) ;
 int mpfr_set_z (int ,int ,int ) ;
 int mpz_and (int ,int ,int ) ;
 int mpz_clear (int ) ;
 int mpz_init (int ) ;
 int mpz_init_set_si (int ,int) ;
 int mpz_init_set_str (int ,char*,int) ;

void apply_int_mask(calc_number_t *r)
{
    mpz_t a, mask;

    switch (calc.size) {
    case 129:
        mpz_init_set_str(mask, "FFFFFFFFFFFFFFFF", 16);
        break;
    case 130:
        mpz_init_set_str(mask, "00000000FFFFFFFF", 16);
        break;
    case 128:
        mpz_init_set_str(mask, "000000000000FFFF", 16);
        break;
    case 131:
        mpz_init_set_str(mask, "00000000000000FF", 16);
        break;
    default:
        mpz_init_set_si(mask, -1);
    }
    mpz_init(a);
    mpfr_get_z(a, r->mf, MPFR_DEFAULT_RND);
    mpz_and(a, a, mask);
    mpfr_set_z(r->mf, a, MPFR_DEFAULT_RND);
    mpz_clear(a);
    mpz_clear(mask);
}
