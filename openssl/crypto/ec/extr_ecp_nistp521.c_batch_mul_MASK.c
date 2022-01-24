#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  nq ;
typedef  int limb ;
typedef  int const* felem_bytearray ;
typedef  int /*<<< orphan*/  felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int const* const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(felem x_out, felem y_out, felem z_out,
                      const felem_bytearray scalars[],
                      const unsigned num_points, const u8 *g_scalar,
                      const int mixed, const felem pre_comp[][17][3],
                      const felem g_pre_comp[16][3])
{
    int i, skip;
    unsigned num, gen_mul = (g_scalar != NULL);
    felem nq[3], tmp[4];
    limb bits;
    u8 sign, digit;

    /* set nq to the point at infinity */
    FUNC6(nq, 0, sizeof(nq));

    /*
     * Loop over all scalars msb-to-lsb, interleaving additions of multiples
     * of the generator (last quarter of rounds) and additions of other
     * points multiples (every 5th round).
     */
    skip = 1;                   /* save two point operations in the first
                                 * round */
    for (i = (num_points ? 520 : 130); i >= 0; --i) {
        /* double */
        if (!skip)
            FUNC8(nq[0], nq[1], nq[2], nq[0], nq[1], nq[2]);

        /* add multiples of the generator */
        if (gen_mul && (i <= 130)) {
            bits = FUNC4(g_scalar, i + 390) << 3;
            if (i < 130) {
                bits |= FUNC4(g_scalar, i + 260) << 2;
                bits |= FUNC4(g_scalar, i + 130) << 1;
                bits |= FUNC4(g_scalar, i);
            }
            /* select the point to add, in constant time */
            FUNC9(bits, 16, g_pre_comp, tmp);
            if (!skip) {
                /* The 1 argument below is for "mixed" */
                FUNC7(nq[0], nq[1], nq[2],
                          nq[0], nq[1], nq[2], 1, tmp[0], tmp[1], tmp[2]);
            } else {
                FUNC5(nq, tmp, 3 * sizeof(felem));
                skip = 0;
            }
        }

        /* do other additions every 5 doublings */
        if (num_points && (i % 5 == 0)) {
            /* loop over all scalars */
            for (num = 0; num < num_points; ++num) {
                bits = FUNC4(scalars[num], i + 4) << 5;
                bits |= FUNC4(scalars[num], i + 3) << 4;
                bits |= FUNC4(scalars[num], i + 2) << 3;
                bits |= FUNC4(scalars[num], i + 1) << 2;
                bits |= FUNC4(scalars[num], i) << 1;
                bits |= FUNC4(scalars[num], i - 1);
                FUNC1(&sign, &digit, bits);

                /*
                 * select the point to add or subtract, in constant time
                 */
                FUNC9(digit, 17, pre_comp[num], tmp);
                FUNC3(tmp[3], tmp[1]); /* (X, -Y, Z) is the negative
                                            * point */
                FUNC0(tmp[1], tmp[3], (-(limb) sign));

                if (!skip) {
                    FUNC7(nq[0], nq[1], nq[2],
                              nq[0], nq[1], nq[2],
                              mixed, tmp[0], tmp[1], tmp[2]);
                } else {
                    FUNC5(nq, tmp, 3 * sizeof(felem));
                    skip = 0;
                }
            }
        }
    }
    FUNC2(x_out, nq[0]);
    FUNC2(y_out, nq[1]);
    FUNC2(z_out, nq[2]);
}