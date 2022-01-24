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
typedef  int /*<<< orphan*/  const smallfelem ;
typedef  int /*<<< orphan*/  longfelem ;
typedef  scalar_t__ limb ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC20(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const smallfelem x2,
                      const smallfelem y2, const smallfelem z2)
{
    felem ftmp, ftmp2, ftmp3, ftmp4, ftmp5, ftmp6, x_out, y_out, z_out;
    longfelem tmp, tmp2;
    smallfelem small1, small2, small3, small4, small5;
    limb x_equal, y_equal, z1_is_zero, z2_is_zero;

    FUNC9(small3, z1);

    z1_is_zero = FUNC17(small3);
    z2_is_zero = FUNC17(z2);

    /* ftmp = z1z1 = z1**2 */
    FUNC19(tmp, small3);
    FUNC6(ftmp, tmp);
    /* ftmp[i] < 2^101 */
    FUNC9(small1, ftmp);

    if (!mixed) {
        /* ftmp2 = z2z2 = z2**2 */
        FUNC19(tmp, z2);
        FUNC6(ftmp2, tmp);
        /* ftmp2[i] < 2^101 */
        FUNC9(small2, ftmp2);

        FUNC9(small5, x1);

        /* u1 = ftmp3 = x1*z2z2 */
        FUNC18(tmp, small5, small2);
        FUNC6(ftmp3, tmp);
        /* ftmp3[i] < 2^101 */

        /* ftmp5 = z1 + z2 */
        FUNC2(ftmp5, z1);
        FUNC11(ftmp5, z2);
        /* ftmp5[i] < 2^107 */

        /* ftmp5 = (z1 + z2)**2 - (z1z1 + z2z2) = 2z1z2 */
        FUNC12(tmp, ftmp5);
        FUNC6(ftmp5, tmp);
        /* ftmp2 = z2z2 + z1z1 */
        FUNC13(ftmp2, ftmp);
        /* ftmp2[i] < 2^101 + 2^101 = 2^102 */
        FUNC3(ftmp5, ftmp2);
        /* ftmp5[i] < 2^105 + 2^101 < 2^106 */

        /* ftmp2 = z2 * z2z2 */
        FUNC18(tmp, small2, z2);
        FUNC6(ftmp2, tmp);

        /* s1 = ftmp2 = y1 * z2**3 */
        FUNC5(tmp, y1, ftmp2);
        FUNC6(ftmp6, tmp);
        /* ftmp6[i] < 2^101 */
    } else {
        /*
         * We'll assume z2 = 1 (special case z2 = 0 is handled later)
         */

        /* u1 = ftmp3 = x1*z2z2 */
        FUNC2(ftmp3, x1);
        /* ftmp3[i] < 2^106 */

        /* ftmp5 = 2z1z2 */
        FUNC2(ftmp5, z1);
        FUNC8(ftmp5, 2);
        /* ftmp5[i] < 2*2^106 = 2^107 */

        /* s1 = ftmp2 = y1 * z2**3 */
        FUNC2(ftmp6, y1);
        /* ftmp6[i] < 2^106 */
    }

    /* u2 = x2*z1z1 */
    FUNC18(tmp, x2, small1);
    FUNC6(ftmp4, tmp);

    /* h = ftmp4 = u2 - u1 */
    FUNC4(ftmp4, ftmp3);
    /* ftmp4[i] < 2^107 + 2^101 < 2^108 */
    FUNC9(small4, ftmp4);

    x_equal = FUNC17(small4);

    /* z_out = ftmp5 * h */
    FUNC10(tmp, small4, ftmp5);
    FUNC6(z_out, tmp);
    /* z_out[i] < 2^101 */

    /* ftmp = z1 * z1z1 */
    FUNC18(tmp, small1, small3);
    FUNC6(ftmp, tmp);

    /* s2 = tmp = y2 * z1**3 */
    FUNC10(tmp, y2, ftmp);
    FUNC6(ftmp5, tmp);

    /* r = ftmp5 = (s2 - s1)*2 */
    FUNC4(ftmp5, ftmp6);
    /* ftmp5[i] < 2^107 + 2^107 = 2^108 */
    FUNC8(ftmp5, 2);
    /* ftmp5[i] < 2^109 */
    FUNC9(small1, ftmp5);
    y_equal = FUNC17(small1);

    if (x_equal && y_equal && !z1_is_zero && !z2_is_zero) {
        FUNC16(x3, y3, z3, x1, y1, z1);
        return;
    }

    /* I = ftmp = (2h)**2 */
    FUNC2(ftmp, ftmp4);
    FUNC8(ftmp, 2);
    /* ftmp[i] < 2*2^108 = 2^109 */
    FUNC12(tmp, ftmp);
    FUNC6(ftmp, tmp);

    /* J = ftmp2 = h * I */
    FUNC5(tmp, ftmp4, ftmp);
    FUNC6(ftmp2, tmp);

    /* V = ftmp4 = U1 * I */
    FUNC5(tmp, ftmp3, ftmp);
    FUNC6(ftmp4, tmp);

    /* x_out = r**2 - J - 2V */
    FUNC19(tmp, small1);
    FUNC6(x_out, tmp);
    FUNC2(ftmp3, ftmp4);
    FUNC8(ftmp4, 2);
    FUNC13(ftmp4, ftmp2);
    /* ftmp4[i] < 2*2^101 + 2^101 < 2^103 */
    FUNC3(x_out, ftmp4);
    /* x_out[i] < 2^105 + 2^101 */

    /* y_out = r(V-x_out) - 2 * s1 * J */
    FUNC4(ftmp3, x_out);
    /* ftmp3[i] < 2^107 + 2^101 < 2^108 */
    FUNC10(tmp, small1, ftmp3);
    FUNC5(tmp2, ftmp6, ftmp2);
    FUNC15(tmp2, 2);
    /* tmp2[i] < 2*2^67 = 2^68 */
    FUNC14(tmp, tmp2);
    /* tmp[i] < 2^67 + 2^70 + 2^40 < 2^71 */
    FUNC7(y_out, tmp);
    /* y_out[i] < 2^106 */

    FUNC1(x_out, x2, z1_is_zero);
    FUNC0(x_out, x1, z2_is_zero);
    FUNC1(y_out, y2, z1_is_zero);
    FUNC0(y_out, y1, z2_is_zero);
    FUNC1(z_out, z2, z1_is_zero);
    FUNC0(z_out, z1, z2_is_zero);
    FUNC2(x3, x_out);
    FUNC2(y3, y_out);
    FUNC2(z3, z_out);
}