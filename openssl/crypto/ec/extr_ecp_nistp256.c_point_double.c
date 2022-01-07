
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int longfelem ;
typedef int const felem ;


 int felem_assign (int const,int const) ;
 int felem_diff (int const,int const) ;
 int felem_diff_zero107 (int const,int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_reduce_zero105 (int const,int ) ;
 int felem_scalar (int const,int) ;
 int felem_shrink (int ,int const) ;
 int felem_small_mul (int ,int ,int const) ;
 int felem_square (int ,int const) ;
 int felem_sum (int const,int const) ;
 int longfelem_diff (int ,int ) ;
 int longfelem_scalar (int ,int) ;
 int smallfelem_square (int ,int ) ;

__attribute__((used)) static void
point_double(felem x_out, felem y_out, felem z_out,
             const felem x_in, const felem y_in, const felem z_in)
{
    longfelem tmp, tmp2;
    felem delta, gamma, beta, alpha, ftmp, ftmp2;
    smallfelem small1, small2;

    felem_assign(ftmp, x_in);

    felem_assign(ftmp2, x_in);



    felem_square(tmp, z_in);
    felem_reduce(delta, tmp);



    felem_square(tmp, y_in);
    felem_reduce(gamma, tmp);

    felem_shrink(small1, gamma);


    felem_small_mul(tmp, small1, x_in);
    felem_reduce(beta, tmp);



    felem_diff(ftmp, delta);

    felem_sum(ftmp2, delta);

    felem_scalar(ftmp2, 3);

    felem_mul(tmp, ftmp, ftmp2);
    felem_reduce(alpha, tmp);

    felem_shrink(small2, alpha);


    smallfelem_square(tmp, small2);
    felem_reduce(x_out, tmp);
    felem_assign(ftmp, beta);
    felem_scalar(ftmp, 8);

    felem_diff(x_out, ftmp);



    felem_sum(delta, gamma);

    felem_assign(ftmp, y_in);
    felem_sum(ftmp, z_in);

    felem_square(tmp, ftmp);
    felem_reduce(z_out, tmp);
    felem_diff(z_out, delta);



    felem_scalar(beta, 4);

    felem_diff_zero107(beta, x_out);

    felem_small_mul(tmp, small2, beta);

    smallfelem_square(tmp2, small1);

    longfelem_scalar(tmp2, 8);

    longfelem_diff(tmp, tmp2);

    felem_reduce_zero105(y_out, tmp);

}
