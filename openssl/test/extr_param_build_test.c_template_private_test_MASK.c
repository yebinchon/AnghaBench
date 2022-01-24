#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  data2 ;
typedef  int /*<<< orphan*/  data1 ;
struct TYPE_21__ {unsigned int data_type; size_t data_size; void* data; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int OSSL_PARAM_OCTET_PTR ; 
 int OSSL_PARAM_OCTET_STRING ; 
 int OSSL_PARAM_UNSIGNED_INTEGER ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned long*) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,size_t,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (size_t,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(void)
{
    static int data1[] = { 2, 3, 5, 7, 11, 15, 17 };
    static unsigned char data2[] = { 2, 4, 6, 8, 10 };
    OSSL_PARAM_BLD bld;
    OSSL_PARAM *params = NULL, *p;
    unsigned int i;
    unsigned long int l;
    uint32_t i32;
    uint64_t i64;
    size_t st;
    BIGNUM *bn = NULL, *bn_res = NULL;
    int res = 0;

    FUNC20(&bld);
    if (!FUNC16(FUNC25(&bld, "i", 6))
        || !FUNC16(FUNC28(&bld, "l", 42))
        || !FUNC16(FUNC26(&bld, "i32", 1532))
        || !FUNC16(FUNC27(&bld, "i64", 9999999))
        || !FUNC16(FUNC24(&bld, "st", 65537))
        || !FUNC13(bn = FUNC2())
        || !FUNC16(FUNC3(bn, 1729))
        || !FUNC16(FUNC21(&bld, "bignumber", bn))
        || !FUNC16(FUNC23(&bld, "oct_s", data1,
                                                       sizeof(data1)))
        || !FUNC16(FUNC22(&bld, "oct_p", data2,
                                                    sizeof(data2)))
        || !FUNC13(params = FUNC29(&bld))
        /* Check unsigned int */
        || !FUNC13(p = FUNC10(params, "i"))
        || !FUNC16(FUNC6(p, &i))
        || !FUNC15(p->key, "i")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC14(p->data_size, sizeof(int))
        || !FUNC17(i, 6)
        /* Check unsigned int32 */
        || !FUNC13(p = FUNC10(params, "i32"))
        || !FUNC16(FUNC7(p, &i32))
        || !FUNC15(p->key, "i32")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC14(p->data_size, sizeof(int32_t))
        || !FUNC17((unsigned int)i32, 1532)
        /* Check unsigned int64 */
        || !FUNC13(p = FUNC10(params, "i64"))
        || !FUNC15(p->key, "i64")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC14(p->data_size, sizeof(int64_t))
        || !FUNC16(FUNC8(p, &i64))
        || !FUNC18((unsigned long)i64, 9999999)
        /* Check unsigned long int */
        || !FUNC13(p = FUNC10(params, "l"))
        || !FUNC15(p->key, "l")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC14(p->data_size, sizeof(unsigned long int))
        || !FUNC16(FUNC9(p, &l))
        || !FUNC18(l, 42)
        /* Check size_t */
        || !FUNC13(p = FUNC10(params, "st"))
        || !FUNC15(p->key, "st")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC14(p->data_size, sizeof(size_t))
        || !FUNC16(FUNC5(p, &st))
        || !FUNC14(st, 65537)
        /* Check octet string */
        || !FUNC13(p = FUNC10(params, "oct_s"))
        || !FUNC15(p->key, "oct_s")
        || !FUNC17(p->data_type, OSSL_PARAM_OCTET_STRING)
        || !FUNC12(p->data, p->data_size, data1, sizeof(data1))
        /* Check octet pointer */
        || !FUNC13(p = FUNC10(params, "oct_p"))
        || !FUNC15(p->key, "oct_p")
        || !FUNC17(p->data_type, OSSL_PARAM_OCTET_PTR)
        || !FUNC12(*(void **)p->data, p->data_size, data2, sizeof(data2))
        /* Check BN */
        || !FUNC13(p = FUNC10(params, "bignumber"))
        || !FUNC15(p->key, "bignumber")
        || !FUNC17(p->data_type, OSSL_PARAM_UNSIGNED_INTEGER)
        || !FUNC16(FUNC4(p, &bn_res))
        || !FUNC11(FUNC0(bn_res, bn), 0))
        goto err;
    res = 1;
err:
    FUNC19(params);
    FUNC1(bn);
    FUNC1(bn_res);
    return res;
}