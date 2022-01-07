
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widefelem ;
typedef int const felem ;


 int felem_assign (int const,int const) ;
 int felem_diff (int const,int const) ;
 int felem_diff_128_64 (int ,int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_scalar (int const,int) ;
 int felem_square (int ,int const) ;
 int felem_sum (int const,int const) ;
 int widefelem_diff (int ,int ) ;
 int widefelem_scalar (int ,int) ;

__attribute__((used)) static void
point_double(felem x_out, felem y_out, felem z_out,
             const felem x_in, const felem y_in, const felem z_in)
{
    widefelem tmp, tmp2;
    felem delta, gamma, beta, alpha, ftmp, ftmp2;

    felem_assign(ftmp, x_in);
    felem_assign(ftmp2, x_in);


    felem_square(tmp, z_in);
    felem_reduce(delta, tmp);


    felem_square(tmp, y_in);
    felem_reduce(gamma, tmp);


    felem_mul(tmp, x_in, gamma);
    felem_reduce(beta, tmp);


    felem_diff(ftmp, delta);

    felem_sum(ftmp2, delta);

    felem_scalar(ftmp2, 3);

    felem_mul(tmp, ftmp, ftmp2);

    felem_reduce(alpha, tmp);


    felem_square(tmp, alpha);

    felem_assign(ftmp, beta);
    felem_scalar(ftmp, 8);

    felem_diff_128_64(tmp, ftmp);

    felem_reduce(x_out, tmp);


    felem_sum(delta, gamma);

    felem_assign(ftmp, y_in);
    felem_sum(ftmp, z_in);

    felem_square(tmp, ftmp);

    felem_diff_128_64(tmp, delta);

    felem_reduce(z_out, tmp);


    felem_scalar(beta, 4);

    felem_diff(beta, x_out);

    felem_mul(tmp, alpha, beta);

    felem_square(tmp2, gamma);

    widefelem_scalar(tmp2, 8);

    widefelem_diff(tmp, tmp2);

    felem_reduce(y_out, tmp);
}
