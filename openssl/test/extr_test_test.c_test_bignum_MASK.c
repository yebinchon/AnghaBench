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
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(void)
{
    BIGNUM *a = NULL, *b = NULL, *c = NULL;
    int r = 0;

    if (!FUNC2(1, FUNC20(FUNC0(&a, "0"), 1))
        | !FUNC2(1, FUNC6(a, 0))
        | !FUNC2(0, FUNC6(a, 30))
        | !FUNC2(1, FUNC3(a, 0))
        | !FUNC2(0, FUNC5(a))
        | !FUNC2(1, FUNC7(a))
        | !FUNC2(0, FUNC18(a))
        | !FUNC2(1, FUNC14(a))
        | !FUNC2(0, FUNC16(a))
        | !FUNC2(1, FUNC10(a))
        | !FUNC2(0, FUNC12(a))
        | !FUNC2(1, FUNC8(a))
        | !FUNC2(0, FUNC19(a))
        | !FUNC2(1, FUNC4(b, c))
        | !FUNC2(0, FUNC4(a, b))
        | !FUNC2(0, FUNC17(NULL, c))
        | !FUNC2(1, FUNC20(FUNC0(&b, "1"), 1))
        | !FUNC2(1, FUNC6(b, 1))
        | !FUNC2(1, FUNC5(b))
        | !FUNC2(0, FUNC3(b, 0))
        | !FUNC2(1, FUNC3(b, 1))
        | !FUNC2(0, FUNC7(b))
        | !FUNC2(1, FUNC18(b))
        | !FUNC2(0, FUNC14(b))
        | !FUNC2(0, FUNC16(b))
        | !FUNC2(1, FUNC10(b))
        | !FUNC2(1, FUNC12(b))
        | !FUNC2(0, FUNC8(b))
        | !FUNC2(1, FUNC19(b))
        | !FUNC2(1, FUNC20(FUNC0(&c, "-334739439"), 10))
        | !FUNC2(0, FUNC6(c, 334739439))
        | !FUNC2(1, FUNC3(c, 334739439))
        | !FUNC2(0, FUNC7(c))
        | !FUNC2(1, FUNC18(c))
        | !FUNC2(1, FUNC14(c))
        | !FUNC2(1, FUNC16(c))
        | !FUNC2(0, FUNC10(c))
        | !FUNC2(0, FUNC12(c))
        | !FUNC2(0, FUNC8(c))
        | !FUNC2(1, FUNC19(c))
        | !FUNC2(1, FUNC4(a, a))
        | !FUNC2(0, FUNC17(a, a))
        | !FUNC2(0, FUNC4(a, b))
        | !FUNC2(1, FUNC17(a, b))
        | !FUNC2(0, FUNC15(a, c))
        | !FUNC2(1, FUNC15(c, b))
        | !FUNC2(0, FUNC15(b, c))
        | !FUNC2(0, FUNC13(a, c))
        | !FUNC2(1, FUNC13(c, b))
        | !FUNC2(0, FUNC13(b, c))
        | !FUNC2(1, FUNC11(a, c))
        | !FUNC2(0, FUNC11(c, b))
        | !FUNC2(1, FUNC11(b, c))
        | !FUNC2(1, FUNC9(a, c))
        | !FUNC2(0, FUNC9(c, b))
        | !FUNC2(1, FUNC9(b, c)))
        goto err;

    r = 1;
err:
    FUNC1(a);
    FUNC1(b);
    FUNC1(c);
    return r;
}