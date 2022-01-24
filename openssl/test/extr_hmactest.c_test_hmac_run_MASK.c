#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int key_len; int /*<<< orphan*/  digest; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/ * key; } ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 char* FUNC15 (unsigned char*,unsigned int) ; 
 TYPE_1__* test ; 

__attribute__((used)) static int FUNC16(void)
{
    char *p;
    HMAC_CTX *ctx = NULL;
    unsigned char buf[EVP_MAX_MD_SIZE];
    unsigned int len;
    int ret = 0;

    ctx = FUNC4();
    FUNC5(ctx);

    if (!FUNC10(ctx)
        || !FUNC12(FUNC3(ctx))
        || !FUNC9(FUNC7(ctx, NULL, 0, NULL, NULL))
        || !FUNC9(FUNC8(ctx, test[4].data, test[4].data_len))
        || !FUNC9(FUNC7(ctx, test[4].key, -1, FUNC0(), NULL)))
        goto err;

    if (!FUNC14(FUNC7(ctx, test[4].key, test[4].key_len, FUNC0(), NULL))
        || !FUNC14(FUNC8(ctx, test[4].data, test[4].data_len))
        || !FUNC14(FUNC6(ctx, buf, &len)))
        goto err;

    p = FUNC15(buf, len);
    if (!FUNC13(p, test[4].digest))
        goto err;

    if (!FUNC9(FUNC7(ctx, NULL, 0, FUNC1(), NULL)))
        goto err;

    if (!FUNC14(FUNC7(ctx, test[5].key, test[5].key_len, FUNC1(), NULL))
        || !FUNC11(FUNC3(ctx), FUNC1())
        || !FUNC14(FUNC8(ctx, test[5].data, test[5].data_len))
        || !FUNC14(FUNC6(ctx, buf, &len)))
        goto err;

    p = FUNC15(buf, len);
    if (!FUNC13(p, test[5].digest))
        goto err;

    if (!FUNC14(FUNC7(ctx, test[6].key, test[6].key_len, NULL, NULL))
        || !FUNC14(FUNC8(ctx, test[6].data, test[6].data_len))
        || !FUNC14(FUNC6(ctx, buf, &len)))
        goto err;
    p = FUNC15(buf, len);
    if (!FUNC13(p, test[6].digest))
        goto err;

    ret = 1;
err:
    FUNC2(ctx);
    return ret;
}