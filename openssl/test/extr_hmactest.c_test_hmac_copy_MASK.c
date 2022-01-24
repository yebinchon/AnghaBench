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
struct TYPE_2__ {int /*<<< orphan*/  digest; int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (unsigned char*,unsigned int) ; 
 TYPE_1__* test ; 

__attribute__((used)) static int FUNC11(void)
{
    char *p;
    HMAC_CTX *ctx = NULL, *ctx2 = NULL;
    unsigned char buf[EVP_MAX_MD_SIZE];
    unsigned int len;
    int ret = 0;

    ctx = FUNC3();
    ctx2 = FUNC3();
    if (!FUNC7(ctx) || !FUNC7(ctx2))
        goto err;

    if (!FUNC9(FUNC5(ctx, test[7].key, test[7].key_len, FUNC0(), NULL))
        || !FUNC9(FUNC6(ctx, test[7].data, test[7].data_len))
        || !FUNC9(FUNC1(ctx2, ctx))
        || !FUNC9(FUNC4(ctx2, buf, &len)))
        goto err;

    p = FUNC10(buf, len);
    if (!FUNC8(p, test[7].digest))
        goto err;

    ret = 1;
err:
    FUNC2(ctx2);
    FUNC2(ctx);
    return ret;
}