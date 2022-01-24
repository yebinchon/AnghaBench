#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * pctx; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ CMS_KeyAgreeRecipientInfo ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int*,unsigned char const*,size_t) ; 
 int EVP_MAX_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(unsigned char **pout, size_t *poutlen,
                          const unsigned char *in, size_t inlen,
                          CMS_KeyAgreeRecipientInfo *kari, int enc)
{
    /* Key encryption key */
    unsigned char kek[EVP_MAX_KEY_LENGTH];
    size_t keklen;
    int rv = 0;
    unsigned char *out = NULL;
    int outlen;
    keklen = FUNC0(kari->ctx);
    if (keklen > EVP_MAX_KEY_LENGTH)
        return 0;
    /* Derive KEK */
    if (FUNC5(kari->pctx, kek, &keklen) <= 0)
        goto err;
    /* Set KEK in context */
    if (!FUNC2(kari->ctx, NULL, NULL, kek, NULL, enc))
        goto err;
    /* obtain output length of ciphered key */
    if (!FUNC3(kari->ctx, NULL, &outlen, in, inlen))
        goto err;
    out = FUNC8(outlen);
    if (out == NULL)
        goto err;
    if (!FUNC3(kari->ctx, out, &outlen, in, inlen))
        goto err;
    *pout = out;
    *poutlen = (size_t)outlen;
    rv = 1;

 err:
    FUNC6(kek, keklen);
    if (!rv)
        FUNC7(out);
    FUNC1(kari->ctx);
    /* FIXME: WHY IS kari->pctx freed here?  /RL */
    FUNC4(kari->pctx);
    kari->pctx = NULL;
    return rv;
}