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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static EC_GROUP *FUNC10(const char *p_hex, const char *a_hex,
                                 const char *b_hex, const char *x_hex,
                                 const char *y_hex, const char *order_hex,
                                 const char *cof_hex)
{
    BIGNUM *p = NULL;
    BIGNUM *a = NULL;
    BIGNUM *b = NULL;
    BIGNUM *g_x = NULL;
    BIGNUM *g_y = NULL;
    BIGNUM *order = NULL;
    BIGNUM *cof = NULL;
    EC_POINT *generator = NULL;
    EC_GROUP *group = NULL;
    int ok = 0;

    if (!FUNC9(FUNC1(&p, p_hex))
            || !FUNC9(FUNC1(&a, a_hex))
            || !FUNC9(FUNC1(&b, b_hex)))
        goto done;

    group = FUNC3(p, a, b, NULL);
    if (!FUNC8(group))
        goto done;

    generator = FUNC6(group);
    if (!FUNC8(generator))
        goto done;

    if (!FUNC9(FUNC1(&g_x, x_hex))
            || !FUNC9(FUNC1(&g_y, y_hex))
            || !FUNC9(FUNC7(group, generator, g_x,
                                                          g_y, NULL)))
        goto done;

    if (!FUNC9(FUNC1(&order, order_hex))
            || !FUNC9(FUNC1(&cof, cof_hex))
            || !FUNC9(FUNC4(group, generator, order, cof)))
        goto done;

    ok = 1;
done:
    FUNC0(p);
    FUNC0(a);
    FUNC0(b);
    FUNC0(g_x);
    FUNC0(g_y);
    FUNC5(generator);
    FUNC0(order);
    FUNC0(cof);
    if (!ok) {
        FUNC2(group);
        group = NULL;
    }

    return group;
}