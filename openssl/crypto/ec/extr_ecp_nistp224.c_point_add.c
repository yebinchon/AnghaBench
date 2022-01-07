
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widefelem ;
typedef scalar_t__ limb ;
typedef int const felem ;


 int copy_conditional (int const,int const,scalar_t__) ;
 int felem_assign (int const,int const) ;
 int felem_diff (int const,int const) ;
 int felem_diff_128_64 (int ,int const) ;
 scalar_t__ felem_is_zero (int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_scalar (int const,int) ;
 int felem_square (int ,int const) ;
 int point_double (int const,int const,int const,int const,int const,int const) ;
 int widefelem_diff (int ,int ) ;

__attribute__((used)) static void point_add(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const felem x2, const felem y2,
                      const felem z2)
{
    felem ftmp, ftmp2, ftmp3, ftmp4, ftmp5, x_out, y_out, z_out;
    widefelem tmp, tmp2;
    limb z1_is_zero, z2_is_zero, x_equal, y_equal;

    if (!mixed) {

        felem_square(tmp, z2);
        felem_reduce(ftmp2, tmp);


        felem_mul(tmp, ftmp2, z2);
        felem_reduce(ftmp4, tmp);


        felem_mul(tmp2, ftmp4, y1);
        felem_reduce(ftmp4, tmp2);


        felem_mul(tmp2, ftmp2, x1);
        felem_reduce(ftmp2, tmp2);
    } else {





        felem_assign(ftmp4, y1);


        felem_assign(ftmp2, x1);
    }


    felem_square(tmp, z1);
    felem_reduce(ftmp, tmp);


    felem_mul(tmp, ftmp, z1);
    felem_reduce(ftmp3, tmp);


    felem_mul(tmp, ftmp3, y2);



    felem_diff_128_64(tmp, ftmp4);

    felem_reduce(ftmp3, tmp);


    felem_mul(tmp, ftmp, x2);



    felem_diff_128_64(tmp, ftmp2);

    felem_reduce(ftmp, tmp);





    x_equal = felem_is_zero(ftmp);
    y_equal = felem_is_zero(ftmp3);
    z1_is_zero = felem_is_zero(z1);
    z2_is_zero = felem_is_zero(z2);

    if (x_equal && y_equal && !z1_is_zero && !z2_is_zero) {
        point_double(x3, y3, z3, x1, y1, z1);
        return;
    }


    if (!mixed) {
        felem_mul(tmp, z1, z2);
        felem_reduce(ftmp5, tmp);
    } else {

        felem_assign(ftmp5, z1);
    }


    felem_mul(tmp, ftmp, ftmp5);
    felem_reduce(z_out, tmp);


    felem_assign(ftmp5, ftmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);


    felem_mul(tmp, ftmp, ftmp5);
    felem_reduce(ftmp5, tmp);


    felem_mul(tmp, ftmp2, ftmp);
    felem_reduce(ftmp2, tmp);


    felem_mul(tmp, ftmp4, ftmp5);



    felem_square(tmp2, ftmp3);



    felem_diff_128_64(tmp2, ftmp5);



    felem_assign(ftmp5, ftmp2);
    felem_scalar(ftmp5, 2);






    felem_diff_128_64(tmp2, ftmp5);

    felem_reduce(x_out, tmp2);


    felem_diff(ftmp2, x_out);





    felem_mul(tmp2, ftmp3, ftmp2);






    widefelem_diff(tmp2, tmp);

    felem_reduce(y_out, tmp2);
    copy_conditional(x_out, x2, z1_is_zero);
    copy_conditional(x_out, x1, z2_is_zero);
    copy_conditional(y_out, y2, z1_is_zero);
    copy_conditional(y_out, y1, z2_is_zero);
    copy_conditional(z_out, z2, z1_is_zero);
    copy_conditional(z_out, z1, z2_is_zero);
    felem_assign(x3, x_out);
    felem_assign(y3, y_out);
    felem_assign(z3, z_out);
}
