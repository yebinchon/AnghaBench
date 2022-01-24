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
typedef  int /*<<< orphan*/  mask_t ;
typedef  int /*<<< orphan*/  const gf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(gf y, const gf x, int assert_nonzero)
{
    mask_t ret;
    gf t1, t2;

    FUNC4(t1, x);              /* o^2 */
    ret = FUNC2(t2, t1);       /* +-1/sqrt(o^2) = +-1/o */
    (void)ret;
    if (assert_nonzero)
        FUNC0(ret);
    FUNC4(t1, t2);
    FUNC3(t2, t1, x);          /* not direct to y in case of alias. */
    FUNC1(y, t2);
}