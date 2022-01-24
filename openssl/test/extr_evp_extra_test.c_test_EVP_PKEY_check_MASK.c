#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {unsigned char* kder; size_t size; int evptype; int check; int pub_check; int param_check; int type; } ;
struct TYPE_27__ {struct TYPE_27__* pkey; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  TYPE_1__ EVP_PKEY ;
typedef  TYPE_1__ EC_KEY ;
typedef  TYPE_1__ BIO ;
typedef  TYPE_5__ APK_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *,unsigned char const**,size_t) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ *,unsigned char const**,size_t) ; 
 TYPE_1__* FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_5__* keycheckdata ; 

__attribute__((used)) static int FUNC20(int i)
{
    int ret = 0;
    const unsigned char *p;
    EVP_PKEY *pkey = NULL;
#ifndef OPENSSL_NO_EC
    EC_KEY *eckey = NULL;
#endif
    EVP_PKEY_CTX *ctx = NULL;
    EVP_PKEY_CTX *ctx2 = NULL;
    const APK_DATA *ak = &keycheckdata[i];
    const unsigned char *input = ak->kder;
    size_t input_len = ak->size;
    int expected_id = ak->evptype;
    int expected_check = ak->check;
    int expected_pub_check = ak->pub_check;
    int expected_param_check = ak->param_check;
    int type = ak->type;
    BIO *pubkey = NULL;

    p = input;

    switch (type) {
    case 0:
        if (!FUNC14(pkey = FUNC17(NULL, &p, input_len))
            || !FUNC15(p, input + input_len)
            || !FUNC13(FUNC8(pkey), expected_id))
            goto done;
        break;
#ifndef OPENSSL_NO_EC
    case 1:
        if (!FUNC14(pubkey = FUNC1(input, input_len))
            || !FUNC14(eckey = FUNC19(pubkey, NULL))
            || !FUNC14(pkey = FUNC9())
            || !FUNC16(FUNC5(pkey, eckey)))
            goto done;
        break;
    case 2:
        if (!FUNC14(eckey = FUNC18(NULL, &p, input_len))
            || !FUNC15(p, input + input_len)
            || !FUNC14(pkey = FUNC9())
            || !FUNC16(FUNC5(pkey, eckey)))
            goto done;
        break;
#endif
    default:
        return 0;
    }

    if (!FUNC14(ctx = FUNC3(pkey, NULL)))
        goto done;

    if (!FUNC13(FUNC6(ctx), expected_check))
        goto done;

    if (!FUNC13(FUNC11(ctx), expected_pub_check))
        goto done;

    if (!FUNC13(FUNC10(ctx), expected_param_check))
        goto done;

    ctx2 = FUNC4(0xdefaced, NULL);
    /* assign the pkey directly, as an internal test */
    FUNC12(pkey);
    ctx2->pkey = pkey;

    if (!FUNC13(FUNC6(ctx2), 0xbeef))
        goto done;

    if (!FUNC13(FUNC11(ctx2), 0xbeef))
        goto done;

    if (!FUNC13(FUNC10(ctx2), 0xbeef))
        goto done;

    ret = 1;

 done:
    FUNC2(ctx);
    FUNC2(ctx2);
    FUNC7(pkey);
    FUNC0(pubkey);
    return ret;
}