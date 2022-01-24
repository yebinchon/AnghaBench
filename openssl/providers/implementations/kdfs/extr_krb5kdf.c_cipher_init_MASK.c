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
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(EVP_CIPHER_CTX *ctx,
                       const EVP_CIPHER *cipher, ENGINE *engine,
                       const unsigned char *key, size_t key_len)
{
    int klen, ret;

    ret = FUNC3(ctx, cipher, engine, key, NULL);
    if (!ret)
        goto out;
    /* set the key len for the odd variable key len cipher */
    klen = FUNC0(ctx);
    if (key_len != (size_t)klen) {
        ret = FUNC1(ctx, key_len);
        if (!ret)
            goto out;
    }
    /* we never want padding, either the length requested is a multiple of
     * the cipher block size or we are passed a cipher that can cope with
     * partial blocks via techniques like cipher text stealing */
    ret = FUNC2(ctx, 0);
    if (!ret)
        goto out;

out:
    return ret;
}