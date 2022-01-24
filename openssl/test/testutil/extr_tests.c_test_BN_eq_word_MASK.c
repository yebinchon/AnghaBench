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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int,char*,char const*,char const*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC5(const char *file, int line, const char *bns, const char *ws,
                    const BIGNUM *a, BN_ULONG w)
{
    BIGNUM *bw;

    if (a != NULL && FUNC1(a, w))
        return 1;
    bw = FUNC2();
    FUNC3(bw, w);
    FUNC4(NULL, file, line, "BIGNUM", bns, ws, "==", a, bw);
    FUNC0(bw);
    return 0;
}