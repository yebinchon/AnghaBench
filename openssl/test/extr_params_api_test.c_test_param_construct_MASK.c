#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ul ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ubuf ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bn_val ;
struct TYPE_45__ {size_t data_size; int return_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (unsigned char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 size_t FUNC3 (char const**) ; 
 TYPE_1__ FUNC4 (char*,unsigned char*,int) ; 
 TYPE_1__ FUNC5 (char*,double*) ; 
 TYPE_1__ FUNC6 () ; 
 TYPE_1__ FUNC7 (char*,int*) ; 
 TYPE_1__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC9 (char*,scalar_t__*) ; 
 TYPE_1__ FUNC10 (char*,long*) ; 
 TYPE_1__ FUNC11 (char*,void**,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC12 (char*,char*,int) ; 
 TYPE_1__ FUNC13 (char*,size_t*) ; 
 TYPE_1__ FUNC14 (char*,unsigned int*) ; 
 TYPE_1__ FUNC15 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC16 (char*,scalar_t__*) ; 
 TYPE_1__ FUNC17 (char*,unsigned long*) ; 
 TYPE_1__ FUNC18 (char*,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,double*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,void const**,size_t*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,void**,int,size_t*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,char**,int) ; 
 TYPE_1__* FUNC28 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*,double) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC38 (double,double) ; 
 int /*<<< orphan*/  FUNC39 (void*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC40 (char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC42 (void*,void*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC44 (size_t,int) ; 
 int /*<<< orphan*/  FUNC45 (char*,char*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC47(void)
{
    static const char *int_names[] = {
        "int", "long", "int32", "int64"
    };
    static const char *uint_names[] = {
        "uint", "ulong", "uint32", "uint64", "size_t"
    };
    static const unsigned char bn_val[16] = {
        0xac, 0x75, 0x22, 0x7d, 0x81, 0x06, 0x7a, 0x23,
        0xa6, 0xed, 0x87, 0xc7, 0xab, 0xf4, 0x73, 0x22
    };
    OSSL_PARAM params[20];
    char buf[100], buf2[100], *bufp, *bufp2;
    unsigned char ubuf[100];
    void *vp, *vpn = NULL, *vp2;
    OSSL_PARAM *cp;
    int i, n = 0, ret = 0;
    unsigned int u;
    long int l;
    unsigned long int ul;
    int32_t i32;
    uint32_t u32;
    int64_t i64;
    uint64_t u64;
    size_t j, k, s;
    double d, d2;
    BIGNUM *bn = NULL, *bn2 = NULL;

    params[n++] = FUNC7("int", &i);
    params[n++] = FUNC14("uint", &u);
    params[n++] = FUNC10("long", &l);
    params[n++] = FUNC17("ulong", &ul);
    params[n++] = FUNC8("int32", &i32);
    params[n++] = FUNC9("int64", &i64);
    params[n++] = FUNC15("uint32", &u32);
    params[n++] = FUNC16("uint64", &u64);
    params[n++] = FUNC13("size_t", &s);
    params[n++] = FUNC5("double", &d);
    params[n++] = FUNC4("bignum", ubuf, sizeof(ubuf));
    params[n++] = FUNC19("utf8str", buf, sizeof(buf));
    params[n++] = FUNC12("octstr", buf, sizeof(buf));
    params[n++] = FUNC18("utf8ptr", &bufp, 0);
    params[n++] = FUNC11("octptr", &vp, 0);
    params[n] = FUNC6();

    /* Search failure */
    if (!FUNC43(FUNC28(params, "fnord")))
        goto err;

    /* All signed integral types */
    for (j = 0; j < FUNC3(int_names); j++) {
        if (!FUNC41(cp = FUNC28(params, int_names[j]))
            || !FUNC46(FUNC31(cp, (int32_t)(3 + j)))
            || !FUNC46(FUNC22(cp, &i64))
            || !FUNC44(cp->data_size, cp->return_size)
            || !FUNC44((size_t)i64, 3 + j)) {
            FUNC40("iteration %zu var %s", j + 1, int_names[j]);
            goto err;
        }
    }
    /* All unsigned integral types */
    for (j = 0; j < FUNC3(uint_names); j++) {
        if (!FUNC41(cp = FUNC28(params, uint_names[j]))
            || !FUNC46(FUNC34(cp, (uint32_t)(3 + j)))
            || !FUNC46(FUNC25(cp, &u64))
            || !FUNC44(cp->data_size, cp->return_size)
            || !FUNC44((size_t)u64, 3 + j)) {
            FUNC40("iteration %zu var %s", j + 1, uint_names[j]);
            goto err;
        }
    }
    /* Real */
    if (!FUNC41(cp = FUNC28(params, "double"))
        || !FUNC46(FUNC30(cp, 3.14))
        || !FUNC46(FUNC21(cp, &d2))
        || !FUNC44(cp->return_size, sizeof(double))
        || !FUNC38(d, d2))
        goto err;
    /* UTF8 string */
    bufp = NULL;
    if (!FUNC41(cp = FUNC28(params, "utf8str"))
        || !FUNC46(FUNC36(cp, "abcdef"))
        || !FUNC44(cp->return_size, sizeof("abcdef"))
        || !FUNC46(FUNC27(cp, &bufp, 0))
        || !FUNC45(bufp, "abcdef"))
        goto err;
    FUNC2(bufp);
    bufp = buf2;
    if (!FUNC46(FUNC27(cp, &bufp, sizeof(buf2)))
        || !FUNC45(buf2, "abcdef"))
        goto err;
    /* UTF8 pointer */
    bufp = buf;
    if (!FUNC41(cp = FUNC28(params, "utf8ptr"))
        || !FUNC46(FUNC35(cp, "tuvwxyz"))
        || !FUNC44(cp->return_size, sizeof("tuvwxyz"))
        || !FUNC45(bufp, "tuvwxyz")
        || !FUNC46(FUNC26(cp, (const char **)&bufp2))
        || !FUNC42(bufp2, bufp))
        goto err;
    /* OCTET string */
    if (!FUNC41(cp = FUNC28(params, "octstr"))
        || !FUNC46(FUNC33(cp, "abcdefghi",
                                                  sizeof("abcdefghi")))
        || !FUNC44(cp->return_size, sizeof("abcdefghi")))
        goto err;
    /* Match the return size to avoid trailing garbage bytes */
    cp->data_size = cp->return_size;
    if (!FUNC46(FUNC24(cp, &vpn, 0, &s))
        || !FUNC44(s, sizeof("abcdefghi"))
        || !FUNC39(vpn, sizeof("abcdefghi"),
                        "abcdefghi", sizeof("abcdefghi")))
        goto err;
    vp = buf2;
    if (!FUNC46(FUNC24(cp, &vp, sizeof(buf2), &s))
        || !FUNC44(s, sizeof("abcdefghi"))
        || !FUNC39(vp, sizeof("abcdefghi"),
                        "abcdefghi", sizeof("abcdefghi")))
        goto err;
    /* OCTET pointer */
    vp = &l;
    if (!FUNC41(cp = FUNC28(params, "octptr"))
        || !FUNC46(FUNC32(cp, &ul, sizeof(ul)))
        || !FUNC44(cp->return_size, sizeof(ul))
        || !FUNC42(vp, &ul))
        goto err;
    /* Match the return size to avoid trailing garbage bytes */
    cp->data_size = cp->return_size;
    if (!FUNC46(FUNC23(cp, (const void **)&vp2, &k))
        || !FUNC44(k, sizeof(ul))
        || !FUNC42(vp2, vp))
        goto err;
    /* BIGNUM */
    if (!FUNC41(cp = FUNC28(params, "bignum"))
        || !FUNC41(bn = FUNC1(bn_val, (int)sizeof(bn_val), NULL))
        || !FUNC46(FUNC29(cp, bn))
        || !FUNC44(cp->data_size, cp->return_size))
        goto err;
    /* Match the return size to avoid trailing garbage bytes */
    cp->data_size = cp->return_size;
    if(!FUNC46(FUNC20(cp, &bn2))
        || !FUNC37(bn, bn2))
        goto err;
    ret = 1;
err:
    FUNC2(vpn);
    FUNC0(bn);
    FUNC0(bn2);
    return ret;
}