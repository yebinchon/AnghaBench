
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widefelem ;
typedef int const felem ;


 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_square (int ,int const) ;

__attribute__((used)) static void felem_inv(felem out, const felem in)
{
    felem ftmp, ftmp2, ftmp3, ftmp4;
    widefelem tmp;
    unsigned i;

    felem_square(tmp, in);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, in, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, in, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_mul(tmp, ftmp2, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp2, tmp);
    for (i = 0; i < 5; ++i) {
        felem_square(tmp, ftmp2);
        felem_reduce(ftmp2, tmp);
    }
    felem_mul(tmp, ftmp2, ftmp);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp3, tmp);
    for (i = 0; i < 11; ++i) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp3, tmp);
    for (i = 0; i < 23; ++i) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp4, tmp);
    for (i = 0; i < 47; ++i) {
        felem_square(tmp, ftmp4);
        felem_reduce(ftmp4, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp4);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp4, tmp);
    for (i = 0; i < 23; ++i) {
        felem_square(tmp, ftmp4);
        felem_reduce(ftmp4, tmp);
    }
    felem_mul(tmp, ftmp2, ftmp4);
    felem_reduce(ftmp2, tmp);
    for (i = 0; i < 6; ++i) {
        felem_square(tmp, ftmp2);
        felem_reduce(ftmp2, tmp);
    }
    felem_mul(tmp, ftmp2, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, ftmp, in);
    felem_reduce(ftmp, tmp);
    for (i = 0; i < 97; ++i) {
        felem_square(tmp, ftmp);
        felem_reduce(ftmp, tmp);
    }
    felem_mul(tmp, ftmp, ftmp3);
    felem_reduce(out, tmp);
}
