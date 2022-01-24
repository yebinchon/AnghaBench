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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC15(STANZA *s)
{
    BIGNUM *a = NULL, *b = NULL, *m = NULL, *mod_mul = NULL, *ret = NULL;
    int st = 0;

    if (!FUNC11(a = FUNC14(s, "A"))
            || !FUNC11(b = FUNC14(s, "B"))
            || !FUNC11(m = FUNC14(s, "M"))
            || !FUNC11(mod_mul = FUNC14(s, "ModMul"))
            || !FUNC11(ret = FUNC8()))
        goto err;

    if (!FUNC12(FUNC6(ret, a, b, m, ctx))
            || !FUNC13("A * B (mod M)", mod_mul, ret))
        goto err;

    if (FUNC5(m)) {
        /* Reduce |a| and |b| and test the Montgomery version. */
        BN_MONT_CTX *mont = FUNC1();
        BIGNUM *a_tmp = FUNC8();
        BIGNUM *b_tmp = FUNC8();

        if (mont == NULL || a_tmp == NULL || b_tmp == NULL
                || !FUNC12(FUNC2(mont, m, ctx))
                || !FUNC12(FUNC9(a_tmp, a, m, ctx))
                || !FUNC12(FUNC9(b_tmp, b, m, ctx))
                || !FUNC12(FUNC10(a_tmp, a_tmp, mont, ctx))
                || !FUNC12(FUNC10(b_tmp, b_tmp, mont, ctx))
                || !FUNC12(FUNC7(ret, a_tmp, b_tmp,
                                                    mont, ctx))
                || !FUNC12(FUNC4(ret, ret, mont, ctx))
                || !FUNC13("A * B (mod M) (mont)", mod_mul, ret))
            st = 0;
        else
            st = 1;
        FUNC0(mont);
        FUNC3(a_tmp);
        FUNC3(b_tmp);
        if (st == 0)
            goto err;
    }

    st = 1;
 err:
    FUNC3(a);
    FUNC3(b);
    FUNC3(m);
    FUNC3(mod_mul);
    FUNC3(ret);
    return st;
}