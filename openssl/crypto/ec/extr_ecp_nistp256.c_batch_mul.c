
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int smallfelem ;
typedef int nq ;
typedef scalar_t__ limb ;
typedef int const* felem_bytearray ;
typedef int felem ;


 int copy_small_conditional (int ,int ,scalar_t__) ;
 int ec_GFp_nistp_recode_scalar_bits (int*,int*,int) ;
 int felem_assign (int ,int ) ;
 int felem_contract (int ,int ) ;
 int get_bit (int const* const,int) ;
 int memset (int *,int ,int) ;
 int point_add (int ,int ,int ,int ,int ,int ,int const,int ,int ,int ) ;
 int point_double (int ,int ,int ,int ,int ,int ) ;
 int select_point (int,int,int const**,int *) ;
 int smallfelem_expand (int ,int ) ;
 int smallfelem_neg (int ,int ) ;

__attribute__((used)) static void batch_mul(felem x_out, felem y_out, felem z_out,
                      const felem_bytearray scalars[],
                      const unsigned num_points, const u8 *g_scalar,
                      const int mixed, const smallfelem pre_comp[][17][3],
                      const smallfelem g_pre_comp[2][16][3])
{
    int i, skip;
    unsigned num, gen_mul = (g_scalar != ((void*)0));
    felem nq[3], ftmp;
    smallfelem tmp[3];
    u64 bits;
    u8 sign, digit;


    memset(nq, 0, sizeof(nq));






    skip = 1;

    for (i = (num_points ? 255 : 31); i >= 0; --i) {

        if (!skip)
            point_double(nq[0], nq[1], nq[2], nq[0], nq[1], nq[2]);


        if (gen_mul && (i <= 31)) {

            bits = get_bit(g_scalar, i + 224) << 3;
            bits |= get_bit(g_scalar, i + 160) << 2;
            bits |= get_bit(g_scalar, i + 96) << 1;
            bits |= get_bit(g_scalar, i + 32);

            select_point(bits, 16, g_pre_comp[1], tmp);

            if (!skip) {

                point_add(nq[0], nq[1], nq[2],
                          nq[0], nq[1], nq[2], 1, tmp[0], tmp[1], tmp[2]);
            } else {
                smallfelem_expand(nq[0], tmp[0]);
                smallfelem_expand(nq[1], tmp[1]);
                smallfelem_expand(nq[2], tmp[2]);
                skip = 0;
            }


            bits = get_bit(g_scalar, i + 192) << 3;
            bits |= get_bit(g_scalar, i + 128) << 2;
            bits |= get_bit(g_scalar, i + 64) << 1;
            bits |= get_bit(g_scalar, i);

            select_point(bits, 16, g_pre_comp[0], tmp);

            point_add(nq[0], nq[1], nq[2],
                      nq[0], nq[1], nq[2], 1, tmp[0], tmp[1], tmp[2]);
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
                smallfelem_neg(ftmp, tmp[1]);

                copy_small_conditional(ftmp, tmp[1], (((limb) sign) - 1));
                felem_contract(tmp[1], ftmp);

                if (!skip) {
                    point_add(nq[0], nq[1], nq[2],
                              nq[0], nq[1], nq[2],
                              mixed, tmp[0], tmp[1], tmp[2]);
                } else {
                    smallfelem_expand(nq[0], tmp[0]);
                    smallfelem_expand(nq[1], tmp[1]);
                    smallfelem_expand(nq[2], tmp[2]);
                    skip = 0;
                }
            }
        }
    }
    felem_assign(x_out, nq[0]);
    felem_assign(y_out, nq[1]);
    felem_assign(z_out, nq[2]);
}
