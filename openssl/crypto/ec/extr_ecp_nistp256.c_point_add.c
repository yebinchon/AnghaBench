
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const smallfelem ;
typedef int longfelem ;
typedef scalar_t__ limb ;
typedef int const felem ;


 int copy_conditional (int const,int const,scalar_t__) ;
 int copy_small_conditional (int const,int const,scalar_t__) ;
 int felem_assign (int const,int const) ;
 int felem_diff (int const,int const) ;
 int felem_diff_zero107 (int const,int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_reduce_zero105 (int const,int ) ;
 int felem_scalar (int const,int) ;
 int felem_shrink (int const,int const) ;
 int felem_small_mul (int ,int const,int const) ;
 int felem_small_sum (int const,int const) ;
 int felem_square (int ,int const) ;
 int felem_sum (int const,int const) ;
 int longfelem_diff (int ,int ) ;
 int longfelem_scalar (int ,int) ;
 int point_double (int const,int const,int const,int const,int const,int const) ;
 scalar_t__ smallfelem_is_zero (int const) ;
 int smallfelem_mul (int ,int const,int const) ;
 int smallfelem_square (int ,int const) ;

__attribute__((used)) static void point_add(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const smallfelem x2,
                      const smallfelem y2, const smallfelem z2)
{
    felem ftmp, ftmp2, ftmp3, ftmp4, ftmp5, ftmp6, x_out, y_out, z_out;
    longfelem tmp, tmp2;
    smallfelem small1, small2, small3, small4, small5;
    limb x_equal, y_equal, z1_is_zero, z2_is_zero;

    felem_shrink(small3, z1);

    z1_is_zero = smallfelem_is_zero(small3);
    z2_is_zero = smallfelem_is_zero(z2);


    smallfelem_square(tmp, small3);
    felem_reduce(ftmp, tmp);

    felem_shrink(small1, ftmp);

    if (!mixed) {

        smallfelem_square(tmp, z2);
        felem_reduce(ftmp2, tmp);

        felem_shrink(small2, ftmp2);

        felem_shrink(small5, x1);


        smallfelem_mul(tmp, small5, small2);
        felem_reduce(ftmp3, tmp);



        felem_assign(ftmp5, z1);
        felem_small_sum(ftmp5, z2);



        felem_square(tmp, ftmp5);
        felem_reduce(ftmp5, tmp);

        felem_sum(ftmp2, ftmp);

        felem_diff(ftmp5, ftmp2);



        smallfelem_mul(tmp, small2, z2);
        felem_reduce(ftmp2, tmp);


        felem_mul(tmp, y1, ftmp2);
        felem_reduce(ftmp6, tmp);

    } else {





        felem_assign(ftmp3, x1);



        felem_assign(ftmp5, z1);
        felem_scalar(ftmp5, 2);



        felem_assign(ftmp6, y1);

    }


    smallfelem_mul(tmp, x2, small1);
    felem_reduce(ftmp4, tmp);


    felem_diff_zero107(ftmp4, ftmp3);

    felem_shrink(small4, ftmp4);

    x_equal = smallfelem_is_zero(small4);


    felem_small_mul(tmp, small4, ftmp5);
    felem_reduce(z_out, tmp);



    smallfelem_mul(tmp, small1, small3);
    felem_reduce(ftmp, tmp);


    felem_small_mul(tmp, y2, ftmp);
    felem_reduce(ftmp5, tmp);


    felem_diff_zero107(ftmp5, ftmp6);

    felem_scalar(ftmp5, 2);

    felem_shrink(small1, ftmp5);
    y_equal = smallfelem_is_zero(small1);

    if (x_equal && y_equal && !z1_is_zero && !z2_is_zero) {
        point_double(x3, y3, z3, x1, y1, z1);
        return;
    }


    felem_assign(ftmp, ftmp4);
    felem_scalar(ftmp, 2);

    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);


    felem_mul(tmp, ftmp4, ftmp);
    felem_reduce(ftmp2, tmp);


    felem_mul(tmp, ftmp3, ftmp);
    felem_reduce(ftmp4, tmp);


    smallfelem_square(tmp, small1);
    felem_reduce(x_out, tmp);
    felem_assign(ftmp3, ftmp4);
    felem_scalar(ftmp4, 2);
    felem_sum(ftmp4, ftmp2);

    felem_diff(x_out, ftmp4);



    felem_diff_zero107(ftmp3, x_out);

    felem_small_mul(tmp, small1, ftmp3);
    felem_mul(tmp2, ftmp6, ftmp2);
    longfelem_scalar(tmp2, 2);

    longfelem_diff(tmp, tmp2);

    felem_reduce_zero105(y_out, tmp);


    copy_small_conditional(x_out, x2, z1_is_zero);
    copy_conditional(x_out, x1, z2_is_zero);
    copy_small_conditional(y_out, y2, z1_is_zero);
    copy_conditional(y_out, y1, z2_is_zero);
    copy_small_conditional(z_out, z2, z1_is_zero);
    copy_conditional(z_out, z1, z2_is_zero);
    felem_assign(x3, x_out);
    felem_assign(y3, y_out);
    felem_assign(z3, z_out);
}
