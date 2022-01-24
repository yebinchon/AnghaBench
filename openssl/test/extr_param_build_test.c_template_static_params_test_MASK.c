#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secure ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_19__ {char* key; unsigned int data_type; char* data; int /*<<< orphan*/  data_size; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int OSSL_PARAM_UNSIGNED_INTEGER ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC22(int n)
{
    unsigned char data[1000], secure[500];
    OSSL_PARAM_BLD bld;
    OSSL_PARAM params[20], *p;
    BIGNUM *bn = NULL, *bn_r = NULL;
    unsigned int i;
    char *utf = NULL;
    int res = 0;

    FUNC17(&bld);
    if (!FUNC15(FUNC19(&bld, "i", 6))
        || !FUNC11(bn = (n & 1) == 0 ? FUNC2() : FUNC3())
        || !FUNC15(FUNC4(bn, 1337))
        || !FUNC15(FUNC18(&bld, "bn", bn))
        || !FUNC15(FUNC20(&bld, "utf8_s", "bar",
                                                      0))
        || !FUNC11(FUNC21(&bld, params,
                                                FUNC6(params),
                                                data, sizeof(data),
                                                secure, sizeof(secure)))
        /* Check unsigned int */
        || !FUNC11(p = FUNC10(params, "i"))
        || !FUNC15(FUNC8(p, &i))
        || !FUNC14(p->key, "i")
        || !FUNC16(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC12(p->data_size, sizeof(int))
        || !FUNC16(i, 6)
        /* Check BIGNUM */
        || !FUNC11(p = FUNC10(params, "bn"))
        || !FUNC15(FUNC7(p, &bn_r))
        || !FUNC14(p->key, "bn")
        || !FUNC16(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC13(p->data_size, sizeof(BN_ULONG))
        || !FUNC16((unsigned int)FUNC1(bn_r), 1337)
        /* Check UTF8 string */
        || !FUNC11(p = FUNC10(params, "utf8_s"))
        || !FUNC14(p->data, "bar")
        || !FUNC15(FUNC9(p, &utf, 0))
        || !FUNC14(utf, "bar"))
        goto err;
    res = 1;
err:
    FUNC5(utf);
    FUNC0(bn);
    FUNC0(bn_r);
    return res;
}