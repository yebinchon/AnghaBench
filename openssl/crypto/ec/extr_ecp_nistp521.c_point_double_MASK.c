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
typedef  int /*<<< orphan*/  largefelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void
FUNC10(felem x_out, felem y_out, felem z_out,
             const felem x_in, const felem y_in, const felem z_in)
{
    largefelem tmp, tmp2;
    felem delta, gamma, beta, alpha, ftmp, ftmp2;

    FUNC0(ftmp, x_in);
    FUNC0(ftmp2, x_in);

    /* delta = z^2 */
    FUNC8(tmp, z_in);
    FUNC5(delta, tmp);   /* delta[i] < 2^59 + 2^14 */

    /* gamma = y^2 */
    FUNC8(tmp, y_in);
    FUNC5(gamma, tmp);   /* gamma[i] < 2^59 + 2^14 */

    /* beta = x*gamma */
    FUNC4(tmp, x_in, gamma);
    FUNC5(beta, tmp);    /* beta[i] < 2^59 + 2^14 */

    /* alpha = 3*(x-delta)*(x+delta) */
    FUNC2(ftmp, delta);
    /* ftmp[i] < 2^61 */
    FUNC9(ftmp2, delta);
    /* ftmp2[i] < 2^60 + 2^15 */
    FUNC7(ftmp2, 3);
    /* ftmp2[i] < 3*2^60 + 3*2^15 */
    FUNC4(tmp, ftmp, ftmp2);
    /*-
     * tmp[i] < 17(3*2^121 + 3*2^76)
     *        = 61*2^121 + 61*2^76
     *        < 64*2^121 + 64*2^76
     *        = 2^127 + 2^82
     *        < 2^128
     */
    FUNC5(alpha, tmp);

    /* x' = alpha^2 - 8*beta */
    FUNC8(tmp, alpha);
    /*
     * tmp[i] < 17*2^120 < 2^125
     */
    FUNC0(ftmp, beta);
    FUNC7(ftmp, 8);
    /* ftmp[i] < 2^62 + 2^17 */
    FUNC3(tmp, ftmp);
    /* tmp[i] < 2^125 + 2^63 + 2^62 + 2^17 */
    FUNC5(x_out, tmp);

    /* z' = (y + z)^2 - gamma - delta */
    FUNC9(delta, gamma);
    /* delta[i] < 2^60 + 2^15 */
    FUNC0(ftmp, y_in);
    FUNC9(ftmp, z_in);
    /* ftmp[i] < 2^60 + 2^15 */
    FUNC8(tmp, ftmp);
    /*
     * tmp[i] < 17(2^122) < 2^127
     */
    FUNC3(tmp, delta);
    /* tmp[i] < 2^127 + 2^63 */
    FUNC5(z_out, tmp);

    /* y' = alpha*(4*beta - x') - 8*gamma^2 */
    FUNC7(beta, 4);
    /* beta[i] < 2^61 + 2^16 */
    FUNC2(beta, x_out);
    /* beta[i] < 2^61 + 2^60 + 2^16 */
    FUNC4(tmp, alpha, beta);
    /*-
     * tmp[i] < 17*((2^59 + 2^14)(2^61 + 2^60 + 2^16))
     *        = 17*(2^120 + 2^75 + 2^119 + 2^74 + 2^75 + 2^30)
     *        = 17*(2^120 + 2^119 + 2^76 + 2^74 + 2^30)
     *        < 2^128
     */
    FUNC8(tmp2, gamma);
    /*-
     * tmp2[i] < 17*(2^59 + 2^14)^2
     *         = 17*(2^118 + 2^74 + 2^28)
     */
    FUNC6(tmp2, 8);
    /*-
     * tmp2[i] < 8*17*(2^118 + 2^74 + 2^28)
     *         = 2^125 + 2^121 + 2^81 + 2^77 + 2^35 + 2^31
     *         < 2^126
     */
    FUNC1(tmp, tmp2);
    /*-
     * tmp[i] < 2^127 - 2^69 + 17(2^120 + 2^119 + 2^76 + 2^74 + 2^30)
     *        = 2^127 + 2^124 + 2^122 + 2^120 + 2^118 + 2^80 + 2^78 + 2^76 +
     *          2^74 + 2^69 + 2^34 + 2^30
     *        < 2^128
     */
    FUNC5(y_out, tmp);
}