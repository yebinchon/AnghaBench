
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int nq ;
typedef int limb ;
typedef int const* felem_bytearray ;
typedef int felem ;


 int copy_conditional (int ,int ,int) ;
 int ec_GFp_nistp_recode_scalar_bits (int*,int*,int) ;
 int felem_assign (int ,int ) ;
 int felem_neg (int ,int ) ;
 int get_bit (int const* const,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int point_add (int ,int ,int ,int ,int ,int ,int const,int ,int ,int ) ;
 int point_double (int ,int ,int ,int ,int ,int ) ;
 int select_point (int,int,int const**,int *) ;

__attribute__((used)) static void batch_mul(felem x_out, felem y_out, felem z_out,
                      const felem_bytearray scalars[],
                      const unsigned num_points, const u8 *g_scalar,
                      const int mixed, const felem pre_comp[][17][3],
                      const felem g_pre_comp[16][3])
{
    int i, skip;
    unsigned num, gen_mul = (g_scalar != ((void*)0));
    felem nq[3], tmp[4];
    limb bits;
    u8 sign, digit;


    memset(nq, 0, sizeof(nq));






    skip = 1;

    for (i = (num_points ? 520 : 130); i >= 0; --i) {

        if (!skip)
            point_double(nq[0], nq[1], nq[2], nq[0], nq[1], nq[2]);


        if (gen_mul && (i <= 130)) {
            bits = get_bit(g_scalar, i + 390) << 3;
            if (i < 130) {
                bits |= get_bit(g_scalar, i + 260) << 2;
                bits |= get_bit(g_scalar, i + 130) << 1;
                bits |= get_bit(g_scalar, i);
            }

            select_point(bits, 16, g_pre_comp, tmp);
            if (!skip) {

                point_add(nq[0], nq[1], nq[2],
                          nq[0], nq[1], nq[2], 1, tmp[0], tmp[1], tmp[2]);
            } else {
                memcpy(nq, tmp, 3 * sizeof(felem));
                skip = 0;
            }
        }


        if (num_points && (i % 5 == 0)) {

            for (num = 0; num < num_points; ++num) {
                bits = get_bit(scalars[num], i + 4) << 5;
                bits |= get_bit(scalars[num], i + 3) << 4;
                bits |= get_bit(scalars[num], i + 2) << 3;
                bits |= get_bit(scalars[num], i + 1) << 2;
                bits |= get_bit(scalars[num], i) << 1;
                bits |= get_bit(scalars[num], i - 1);
                ec_GFp_nistp_recode_scalar_bits(&sign, &digit, bits);




                select_point(digit, 17, pre_comp[num], tmp);
                felem_neg(tmp[3], tmp[1]);

                copy_conditional(tmp[1], tmp[3], (-(limb) sign));

                if (!skip) {
                    point_add(nq[0], nq[1], nq[2],
                              nq[0], nq[1], nq[2],
                              mixed, tmp[0], tmp[1], tmp[2]);
                } else {
                    memcpy(nq, tmp, 3 * sizeof(felem));
                    skip = 0;
                }
            }
        }
    }
    felem_assign(x_out, nq[0]);
    felem_assign(y_out, nq[1]);
    felem_assign(z_out, nq[2]);
}
