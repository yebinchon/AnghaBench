#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ top; int neg; } ;
typedef  int BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_DEC_CONV ; 
 int BN_DEC_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (char const) ; 

int FUNC9(BIGNUM **bn, const char *a)
{
    BIGNUM *ret = NULL;
    BN_ULONG l = 0;
    int neg = 0, i, j;
    int num;

    if (a == NULL || *a == '\0')
        return 0;
    if (*a == '-') {
        neg = 1;
        a++;
    }

    for (i = 0; i <= INT_MAX / 4 && FUNC8(a[i]); i++)
        continue;

    if (i == 0 || i > INT_MAX / 4)
        goto err;

    num = i + neg;
    if (bn == NULL)
        return num;

    /*
     * a is the start of the digits, and it is 'i' long. We chop it into
     * BN_DEC_NUM digits at a time
     */
    if (*bn == NULL) {
        if ((ret = FUNC3()) == NULL)
            return 0;
    } else {
        ret = *bn;
        FUNC4(ret);
    }

    /* i is the number of digits, a bit of an over expand */
    if (FUNC7(ret, i * 4) == NULL)
        goto err;

    j = BN_DEC_NUM - i % BN_DEC_NUM;
    if (j == BN_DEC_NUM)
        j = 0;
    l = 0;
    while (--i >= 0) {
        l *= 10;
        l += *a - '0';
        a++;
        if (++j == BN_DEC_NUM) {
            if (!FUNC2(ret, BN_DEC_CONV)
                || !FUNC0(ret, l))
                goto err;
            l = 0;
            j = 0;
        }
    }

    FUNC6(ret);
    *bn = ret;
    FUNC5(ret);
    /* Don't set the negative flag if it's zero. */
    if (ret->top != 0)
        ret->neg = neg;
    return num;
 err:
    if (*bn == NULL)
        FUNC1(ret);
    return 0;
}