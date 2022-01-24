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
typedef  int /*<<< orphan*/  STANZA ;
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(STANZA *s, int *out, const char *attribute)
{
    BIGNUM *ret;
    BN_ULONG word;
    int st = 0;

    if (!FUNC2(ret = FUNC4(s, attribute))
            || !FUNC3(word = FUNC1(ret), INT_MAX))
        goto err;

    *out = (int)word;
    st = 1;
 err:
    FUNC0(ret);
    return st;
}