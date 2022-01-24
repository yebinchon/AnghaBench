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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char*,unsigned char const*,unsigned char const*) ; 
 size_t X448_KEYLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const**,unsigned char const**) ; 

__attribute__((used)) static int FUNC2(EVP_PKEY_CTX *ctx, unsigned char *key,
                              size_t *keylen)
{
    const unsigned char *privkey, *pubkey;

    if (!FUNC1(ctx, key, keylen, &privkey, &pubkey)
            || (key != NULL
                && FUNC0(key, privkey, pubkey) == 0))
        return 0;
    *keylen = X448_KEYLEN;
    return 1;
}