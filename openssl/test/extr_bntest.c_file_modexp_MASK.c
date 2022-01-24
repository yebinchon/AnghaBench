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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC13(STANZA *s)
{
    BIGNUM *a = NULL, *e = NULL, *m = NULL, *mod_exp = NULL, *ret = NULL;
    BIGNUM *b = NULL, *c = NULL, *d = NULL;
    int st = 0;

    if (!FUNC9(a = FUNC12(s, "A"))
            || !FUNC9(e = FUNC12(s, "E"))
            || !FUNC9(m = FUNC12(s, "M"))
            || !FUNC9(mod_exp = FUNC12(s, "ModExp"))
            || !FUNC9(ret = FUNC7())
            || !FUNC9(d = FUNC7()))
        goto err;

    if (!FUNC10(FUNC3(ret, a, e, m, ctx))
            || !FUNC11("A ^ E (mod M)", mod_exp, ret))
        goto err;

    if (FUNC2(m)) {
        if (!FUNC10(FUNC4(ret, a, e, m, ctx, NULL))
                || !FUNC11("A ^ E (mod M) (mont)", mod_exp, ret)
                || !FUNC10(FUNC5(ret, a, e, m,
                                                        ctx, NULL))
                || !FUNC11("A ^ E (mod M) (mont const", mod_exp, ret))
            goto err;
    }

    /* Regression test for carry propagation bug in sqr8x_reduction */
    FUNC1(&a, "050505050505");
    FUNC1(&b, "02");
    FUNC1(&c,
        "4141414141414141414141274141414141414141414141414141414141414141"
        "4141414141414141414141414141414141414141414141414141414141414141"
        "4141414141414141414141800000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000000000000"
        "0000000000000000000000000000000000000000000000000000000001");
    if (!FUNC10(FUNC3(d, a, b, c, ctx))
        || !FUNC10(FUNC6(e, a, a, ctx))
        || !FUNC8(d, e))
        goto err;

    st = 1;
 err:
    FUNC0(a);
    FUNC0(b);
    FUNC0(c);
    FUNC0(d);
    FUNC0(e);
    FUNC0(m);
    FUNC0(mod_exp);
    FUNC0(ret);
    return st;
}