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
typedef  int /*<<< orphan*/  secure ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC13(int n)
{
    unsigned char data[10000], secure[500];
    OSSL_PARAM_BLD bld;
    OSSL_PARAM prms[20];
    BIGNUM *bn = NULL;
    int res = 0;

    FUNC8(&bld);
    if (!FUNC7(FUNC10(&bld, "i", 6))
        || !FUNC5(bn = (n & 1) == 0 ? FUNC2() : FUNC3())
        || !FUNC7(FUNC1(&bn, "ABCDEF78901234567890ABCDEF0987987654321"))
        || !FUNC7(FUNC9(&bld, "bn", bn))
        || !FUNC7(FUNC11(&bld, "utf8_s", "abc",
                                                      1000))
        /* No OSSL_PARAMS */
        || !FUNC6(FUNC12(&bld, NULL, 0, data,
                                                     sizeof(data), secure,
                                                     sizeof(secure)))
        /* Short OSSL_PARAMS */
        || !FUNC6(FUNC12(&bld, prms, 2,
                                                     data, sizeof(data),
                                                     secure, sizeof(secure)))
        /* No normal data */
        || !FUNC6(FUNC12(&bld, prms,
                                                     FUNC4(prms),
                                                     NULL, 0, secure,
                                                     sizeof(secure)))
        /* Not enough normal data */
        || !FUNC6(FUNC12(&bld, prms,
                                                     FUNC4(prms),
                                                     data, 50, secure,
                                                     sizeof(secure))))
            goto err;
        if ((n & 1) == 1) {
            /* No secure data */
            if (!FUNC6(FUNC12(&bld, prms,
                                                          FUNC4(prms),
                                                          data, sizeof(data),
                                                          NULL, 0))
            /* Not enough secure data */
            || !FUNC6(FUNC12(&bld, prms,
                                                         FUNC4(prms),
                                                         data, sizeof(data),
                                                         secure, 4)))
                goto err;
        }
    res = 1;
err:
    FUNC0(bn);
    return res;
}