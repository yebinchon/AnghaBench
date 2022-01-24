#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  Y; int /*<<< orphan*/  X; int /*<<< orphan*/  T; int /*<<< orphan*/  Z; } ;
typedef  TYPE_1__ ge_p3 ;
typedef  int /*<<< orphan*/  fe ;

/* Variables and functions */
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const*) ; 
 int const FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sqrtm1 ; 

__attribute__((used)) static int FUNC10(ge_p3 *h, const uint8_t *s)
{
    fe u;
    fe v;
    fe v3;
    fe vxx;
    fe check;

    FUNC2(h->Y, s);
    FUNC0(h->Z);
    FUNC8(u, h->Y);
    FUNC5(v, u, d);
    FUNC9(u, u, h->Z); /* u = y^2-1 */
    FUNC1(v, v, h->Z); /* v = dy^2+1 */

    FUNC8(v3, v);
    FUNC5(v3, v3, v); /* v3 = v^3 */
    FUNC8(h->X, v3);
    FUNC5(h->X, h->X, v);
    FUNC5(h->X, h->X, u); /* x = uv^7 */

    FUNC7(h->X, h->X); /* x = (uv^7)^((q-5)/8) */
    FUNC5(h->X, h->X, v3);
    FUNC5(h->X, h->X, u); /* x = uv^3(uv^7)^((q-5)/8) */

    FUNC8(vxx, h->X);
    FUNC5(vxx, vxx, v);
    FUNC9(check, vxx, u); /* vx^2-u */
    if (FUNC4(check)) {
        FUNC1(check, vxx, u); /* vx^2+u */
        if (FUNC4(check)) {
            return -1;
        }
        FUNC5(h->X, h->X, sqrtm1);
    }

    if (FUNC3(h->X) != (s[31] >> 7)) {
        FUNC6(h->X, h->X);
    }

    FUNC5(h->T, h->X, h->Y);
    return 0;
}