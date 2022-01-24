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
typedef  int uint32_t ;
typedef  scalar_t__ kbkdf_mode ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FEEDBACK ; 
 size_t FUNC4 (size_t,size_t) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC7(EVP_MAC_CTX *ctx_init, kbkdf_mode mode, unsigned char *iv,
                  size_t iv_len, unsigned char *label, size_t label_len,
                  unsigned char *context, size_t context_len,
                  unsigned char *k_i, size_t h, uint32_t l, unsigned char *ko,
                  size_t ko_len)
{
    int ret = 0;
    EVP_MAC_CTX *ctx = NULL;
    size_t written = 0, to_write, k_i_len = iv_len;
    const unsigned char zero = 0;
    uint32_t counter, i;

    /* Setup K(0) for feedback mode. */
    if (iv_len > 0)
        FUNC6(k_i, iv, iv_len);

    for (counter = 1; written < ko_len; counter++) {
        i = FUNC5(counter);

        ctx = FUNC0(ctx_init);
        if (ctx == NULL)
            goto done;

        /* Perform feedback, if appropriate. */
        if (mode == FEEDBACK && !FUNC3(ctx, k_i, k_i_len))
            goto done;

        if (!FUNC3(ctx, (unsigned char *)&i, 4)
            || !FUNC3(ctx, label, label_len)
            || !FUNC3(ctx, &zero, 1)
            || !FUNC3(ctx, context, context_len)
            || !FUNC3(ctx, (unsigned char *)&l, 4)
            || !FUNC2(ctx, k_i, NULL, h))
            goto done;

        to_write = ko_len - written;
        FUNC6(ko + written, k_i, FUNC4(to_write, h));
        written += h;

        k_i_len = h;
        FUNC1(ctx);
        ctx = NULL;
    }

    ret = 1;
done:
    FUNC1(ctx);
    return ret;
}