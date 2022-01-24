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
typedef  int /*<<< orphan*/  smallfelem ;
typedef  int /*<<< orphan*/  longfelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(felem x_out, felem y_out, felem z_out,
             const felem x_in, const felem y_in, const felem z_in)
{
    longfelem tmp, tmp2;
    felem delta, gamma, beta, alpha, ftmp, ftmp2;
    smallfelem small1, small2;

    FUNC0(ftmp, x_in);
    /* ftmp[i] < 2^106 */
    FUNC0(ftmp2, x_in);
    /* ftmp2[i] < 2^106 */

    /* delta = z^2 */
    FUNC9(tmp, z_in);
    FUNC4(delta, tmp);
    /* delta[i] < 2^101 */

    /* gamma = y^2 */
    FUNC9(tmp, y_in);
    FUNC4(gamma, tmp);
    /* gamma[i] < 2^101 */
    FUNC7(small1, gamma);

    /* beta = x*gamma */
    FUNC8(tmp, small1, x_in);
    FUNC4(beta, tmp);
    /* beta[i] < 2^101 */

    /* alpha = 3*(x-delta)*(x+delta) */
    FUNC1(ftmp, delta);
    /* ftmp[i] < 2^105 + 2^106 < 2^107 */
    FUNC10(ftmp2, delta);
    /* ftmp2[i] < 2^105 + 2^106 < 2^107 */
    FUNC6(ftmp2, 3);
    /* ftmp2[i] < 3 * 2^107 < 2^109 */
    FUNC3(tmp, ftmp, ftmp2);
    FUNC4(alpha, tmp);
    /* alpha[i] < 2^101 */
    FUNC7(small2, alpha);

    /* x' = alpha^2 - 8*beta */
    FUNC13(tmp, small2);
    FUNC4(x_out, tmp);
    FUNC0(ftmp, beta);
    FUNC6(ftmp, 8);
    /* ftmp[i] < 8 * 2^101 = 2^104 */
    FUNC1(x_out, ftmp);
    /* x_out[i] < 2^105 + 2^101 < 2^106 */

    /* z' = (y + z)^2 - gamma - delta */
    FUNC10(delta, gamma);
    /* delta[i] < 2^101 + 2^101 = 2^102 */
    FUNC0(ftmp, y_in);
    FUNC10(ftmp, z_in);
    /* ftmp[i] < 2^106 + 2^106 = 2^107 */
    FUNC9(tmp, ftmp);
    FUNC4(z_out, tmp);
    FUNC1(z_out, delta);
    /* z_out[i] < 2^105 + 2^101 < 2^106 */

    /* y' = alpha*(4*beta - x') - 8*gamma^2 */
    FUNC6(beta, 4);
    /* beta[i] < 4 * 2^101 = 2^103 */
    FUNC2(beta, x_out);
    /* beta[i] < 2^107 + 2^103 < 2^108 */
    FUNC8(tmp, small2, beta);
    /* tmp[i] < 7 * 2^64 < 2^67 */
    FUNC13(tmp2, small1);
    /* tmp2[i] < 7 * 2^64 */
    FUNC12(tmp2, 8);
    /* tmp2[i] < 8 * 7 * 2^64 = 7 * 2^67 */
    FUNC11(tmp, tmp2);
    /* tmp[i] < 2^67 + 2^70 + 2^40 < 2^71 */
    FUNC5(y_out, tmp);
    /* y_out[i] < 2^106 */
}