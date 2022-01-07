
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mpfr_t ;
struct TYPE_4__ {int mf; } ;
typedef TYPE_1__ calc_number_t ;
struct TYPE_5__ {int degr; } ;





 int MPFR_DEFAULT_RND ;
 TYPE_3__ calc ;
 int mpfr_clear (int ) ;
 int mpfr_const_pi (int ,int ) ;
 int mpfr_div (int ,int ,int ,int ) ;
 int mpfr_init (int ) ;
 int mpfr_mul (int ,int ,int ,int ) ;
 int mpfr_set_ui (int ,int,int ) ;

__attribute__((used)) static void validate_rad2angle(calc_number_t *r)
{
    mpfr_t mult, divs;

    mpfr_init(mult);
    mpfr_init(divs);
    switch (calc.degr) {
    case 130:
        mpfr_set_ui(mult, 180, MPFR_DEFAULT_RND);
        mpfr_const_pi(divs, MPFR_DEFAULT_RND);
        break;
    case 128:
        mpfr_set_ui(mult, 1, MPFR_DEFAULT_RND);
        mpfr_set_ui(divs, 1, MPFR_DEFAULT_RND);
        break;
    case 129:
        mpfr_set_ui(mult, 200, MPFR_DEFAULT_RND);
        mpfr_const_pi(divs, MPFR_DEFAULT_RND);
        break;
    }
    mpfr_mul(r->mf, r->mf, mult, MPFR_DEFAULT_RND);
    mpfr_div(r->mf, r->mf, divs, MPFR_DEFAULT_RND);

    mpfr_clear(mult);
    mpfr_clear(divs);
}
