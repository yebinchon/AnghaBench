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
typedef  int /*<<< orphan*/  widefelem ;
typedef  int /*<<< orphan*/  const felem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(felem x_out, felem y_out, felem z_out,
             const felem x_in, const felem y_in, const felem z_in)
{
    widefelem tmp, tmp2;
    felem delta, gamma, beta, alpha, ftmp, ftmp2;

    FUNC0(ftmp, x_in);
    FUNC0(ftmp2, x_in);

    /* delta = z^2 */
    FUNC6(tmp, z_in);
    FUNC4(delta, tmp);

    /* gamma = y^2 */
    FUNC6(tmp, y_in);
    FUNC4(gamma, tmp);

    /* beta = x*gamma */
    FUNC3(tmp, x_in, gamma);
    FUNC4(beta, tmp);

    /* alpha = 3*(x-delta)*(x+delta) */
    FUNC1(ftmp, delta);
    /* ftmp[i] < 2^57 + 2^58 + 2 < 2^59 */
    FUNC7(ftmp2, delta);
    /* ftmp2[i] < 2^57 + 2^57 = 2^58 */
    FUNC5(ftmp2, 3);
    /* ftmp2[i] < 3 * 2^58 < 2^60 */
    FUNC3(tmp, ftmp, ftmp2);
    /* tmp[i] < 2^60 * 2^59 * 4 = 2^121 */
    FUNC4(alpha, tmp);

    /* x' = alpha^2 - 8*beta */
    FUNC6(tmp, alpha);
    /* tmp[i] < 4 * 2^57 * 2^57 = 2^116 */
    FUNC0(ftmp, beta);
    FUNC5(ftmp, 8);
    /* ftmp[i] < 8 * 2^57 = 2^60 */
    FUNC2(tmp, ftmp);
    /* tmp[i] < 2^116 + 2^64 + 8 < 2^117 */
    FUNC4(x_out, tmp);

    /* z' = (y + z)^2 - gamma - delta */
    FUNC7(delta, gamma);
    /* delta[i] < 2^57 + 2^57 = 2^58 */
    FUNC0(ftmp, y_in);
    FUNC7(ftmp, z_in);
    /* ftmp[i] < 2^57 + 2^57 = 2^58 */
    FUNC6(tmp, ftmp);
    /* tmp[i] < 4 * 2^58 * 2^58 = 2^118 */
    FUNC2(tmp, delta);
    /* tmp[i] < 2^118 + 2^64 + 8 < 2^119 */
    FUNC4(z_out, tmp);

    /* y' = alpha*(4*beta - x') - 8*gamma^2 */
    FUNC5(beta, 4);
    /* beta[i] < 4 * 2^57 = 2^59 */
    FUNC1(beta, x_out);
    /* beta[i] < 2^59 + 2^58 + 2 < 2^60 */
    FUNC3(tmp, alpha, beta);
    /* tmp[i] < 4 * 2^57 * 2^60 = 2^119 */
    FUNC6(tmp2, gamma);
    /* tmp2[i] < 4 * 2^57 * 2^57 = 2^116 */
    FUNC9(tmp2, 8);
    /* tmp2[i] < 8 * 2^116 = 2^119 */
    FUNC8(tmp, tmp2);
    /* tmp[i] < 2^119 + 2^120 < 2^121 */
    FUNC4(y_out, tmp);
}