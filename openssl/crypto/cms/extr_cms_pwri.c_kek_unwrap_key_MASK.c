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

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_KEK_UNWRAP_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC7(unsigned char *out, size_t *outlen,
                          const unsigned char *in, size_t inlen,
                          EVP_CIPHER_CTX *ctx)
{
    size_t blocklen = FUNC1(ctx);
    unsigned char *tmp;
    int outl, rv = 0;
    if (inlen < 2 * blocklen) {
        /* too small */
        return 0;
    }
    if (inlen % blocklen) {
        /* Invalid size */
        return 0;
    }
    if ((tmp = FUNC5(inlen)) == NULL) {
        FUNC0(CMS_F_KEK_UNWRAP_KEY, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    /* setup IV by decrypting last two blocks */
    if (!FUNC3(ctx, tmp + inlen - 2 * blocklen, &outl,
                           in + inlen - 2 * blocklen, blocklen * 2)
        /*
         * Do a decrypt of last decrypted block to set IV to correct value
         * output it to start of buffer so we don't corrupt decrypted block
         * this works because buffer is at least two block lengths long.
         */
        || !FUNC3(ctx, tmp, &outl,
                              tmp + inlen - blocklen, blocklen)
        /* Can now decrypt first n - 1 blocks */
        || !FUNC3(ctx, tmp, &outl, in, inlen - blocklen)

        /* Reset IV to original value */
        || !FUNC2(ctx, NULL, NULL, NULL, NULL)
        /* Decrypt again */
        || !FUNC3(ctx, tmp, &outl, tmp, inlen))
        goto err;
    /* Check check bytes */
    if (((tmp[1] ^ tmp[4]) & (tmp[2] ^ tmp[5]) & (tmp[3] ^ tmp[6])) != 0xff) {
        /* Check byte failure */
        goto err;
    }
    if (inlen < (size_t)(tmp[0] - 4)) {
        /* Invalid length value */
        goto err;
    }
    *outlen = (size_t)tmp[0];
    FUNC6(out, tmp + 4, *outlen);
    rv = 1;
 err:
    FUNC4(tmp, inlen);
    return rv;

}