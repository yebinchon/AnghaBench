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
 int /*<<< orphan*/  ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 

mask_t FUNC5(gf a, const gf x)
{
    gf L0, L1, L2;

    FUNC3(L1, x);
    FUNC2(L2, x, L1);
    FUNC3(L1, L2);
    FUNC2(L2, x, L1);
    FUNC4(L1, L2, 3);
    FUNC2(L0, L2, L1);
    FUNC4(L1, L0, 3);
    FUNC2(L0, L2, L1);
    FUNC4(L2, L0, 9);
    FUNC2(L1, L0, L2);
    FUNC3(L0, L1);
    FUNC2(L2, x, L0);
    FUNC4(L0, L2, 18);
    FUNC2(L2, L1, L0);
    FUNC4(L0, L2, 37);
    FUNC2(L1, L2, L0);
    FUNC4(L0, L1, 37);
    FUNC2(L1, L2, L0);
    FUNC4(L0, L1, 111);
    FUNC2(L2, L1, L0);
    FUNC3(L0, L2);
    FUNC2(L1, x, L0);
    FUNC4(L0, L1, 223);
    FUNC2(L1, L2, L0);
    FUNC3(L2, L1);
    FUNC2(L0, L2, x);
    FUNC0(a, L1);
    return FUNC1(L0, ONE);
}