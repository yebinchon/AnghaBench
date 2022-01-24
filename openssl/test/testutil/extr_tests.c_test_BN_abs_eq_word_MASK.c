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
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int,char*,char const*,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(const char *file, int line, const char *bns,
                        const char *ws, const BIGNUM *a, BN_ULONG w)
{
    BIGNUM *bw, *aa;

    if (a != NULL && FUNC0(a, w))
        return 1;
    bw = FUNC3();
    aa = FUNC1(a);
    FUNC4(aa, 0);
    FUNC5(bw, w);
    FUNC6(NULL, file, line, "BIGNUM", bns, ws, "abs==",
                             aa, bw);
    FUNC2(bw);
    FUNC2(aa);
    return 0;
}