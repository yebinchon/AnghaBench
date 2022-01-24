#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_23__ {char const* key; char const* data; int /*<<< orphan*/  data_type; int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  OSSL_PARAM_INTEGER ; 
 int /*<<< orphan*/  OSSL_PARAM_REAL ; 
 int /*<<< orphan*/  OSSL_PARAM_UNSIGNED_INTEGER ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,double*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,long*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (double,double) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (long,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,char*,int) ; 
 TYPE_1__* FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(void)
{
    OSSL_PARAM_BLD bld;
    OSSL_PARAM *params = NULL, *p;
    BIGNUM *bn = NULL, *bn_res = NULL;
    int i;
    long int l;
    int32_t i32;
    int64_t i64;
    double d;
    char *utf = NULL;
    const char *cutf;
    int res = 0;

    FUNC23(&bld);
    if (!FUNC20(FUNC26(&bld, "i", -6))
        || !FUNC20(FUNC29(&bld, "l", 42))
        || !FUNC20(FUNC27(&bld, "i32", 1532))
        || !FUNC20(FUNC28(&bld, "i64", -9999999))
        || !FUNC20(FUNC25(&bld, "d", 1.61803398875))
        || !FUNC17(bn = FUNC2())
        || !FUNC20(FUNC3(bn, 1729))
        || !FUNC20(FUNC24(&bld, "bignumber", bn))
        || !FUNC20(FUNC31(&bld, "utf8_s", "foo",
                                                      sizeof("foo")))
        || !FUNC20(FUNC30(&bld, "utf8_p", "bar-boom",
                                                   0))
        || !FUNC17(params = FUNC32(&bld))
        /* Check int */
        || !FUNC17(p = FUNC13(params, "i"))
        || !FUNC20(FUNC7(p, &i))
        || !FUNC19(p->key, "i")
        || !FUNC21(p->data_type, OSSL_PARAM_INTEGER)
        || !FUNC18(p->data_size, sizeof(int))
        || !FUNC15(i, -6)
        /* Check int32 */
        || !FUNC17(p = FUNC13(params, "i32"))
        || !FUNC20(FUNC8(p, &i32))
        || !FUNC19(p->key, "i32")
        || !FUNC21(p->data_type, OSSL_PARAM_INTEGER)
        || !FUNC18(p->data_size, sizeof(int32_t))
        || !FUNC15((int)i32, 1532)
        /* Check int64 */
        || !FUNC17(p = FUNC13(params, "i64"))
        || !FUNC19(p->key, "i64")
        || !FUNC21(p->data_type, OSSL_PARAM_INTEGER)
        || !FUNC18(p->data_size, sizeof(int64_t))
        || !FUNC20(FUNC9(p, &i64))
        || !FUNC16((long)i64, -9999999)
        /* Check long */
        || !FUNC17(p = FUNC13(params, "l"))
        || !FUNC19(p->key, "l")
        || !FUNC21(p->data_type, OSSL_PARAM_INTEGER)
        || !FUNC18(p->data_size, sizeof(long int))
        || !FUNC20(FUNC10(p, &l))
        || !FUNC16(l, 42)
        /* Check double */
        || !FUNC17(p = FUNC13(params, "d"))
        || !FUNC20(FUNC6(p, &d))
        || !FUNC19(p->key, "d")
        || !FUNC21(p->data_type, OSSL_PARAM_REAL)
        || !FUNC18(p->data_size, sizeof(double))
        || !FUNC14(d, 1.61803398875)
        /* Check UTF8 string */
        || !FUNC17(p = FUNC13(params, "utf8_s"))
        || !FUNC19(p->data, "foo")
        || !FUNC20(FUNC12(p, &utf, 0))
        || !FUNC19(utf, "foo")
        /* Check UTF8 pointer */
        || !FUNC17(p = FUNC13(params, "utf8_p"))
        || !FUNC20(FUNC11(p, &cutf))
        || !FUNC19(cutf, "bar-boom")
        /* Check BN */
        || !FUNC17(p = FUNC13(params, "bignumber"))
        || !FUNC19(p->key, "bignumber")
        || !FUNC21(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC20(FUNC5(p, &bn_res))
        || !FUNC15(FUNC0(bn_res, bn), 0))
        goto err;
    res = 1;
err:
    FUNC22(params);
    FUNC4(utf);
    FUNC1(bn);
    FUNC1(bn_res);
    return res;
}