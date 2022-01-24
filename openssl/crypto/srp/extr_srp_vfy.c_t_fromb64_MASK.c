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
typedef  int /*<<< orphan*/  EVP_ENCODE_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  EVP_ENCODE_CTX_USE_SRP_ALPHABET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 size_t FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(unsigned char *a, size_t alen, const char *src)
{
    EVP_ENCODE_CTX *ctx;
    int outl = 0, outl2 = 0;
    size_t size, padsize;
    const unsigned char *pad = (const unsigned char *)"00";

    while (*src == ' ' || *src == '\t' || *src == '\n')
        ++src;
    size = FUNC7(src);
    padsize = 4 - (size & 3);
    padsize &= 3;

    /* Four bytes in src become three bytes output. */
    if (size > INT_MAX || ((size + padsize) / 4) * 3 > alen)
        return -1;

    ctx = FUNC4();
    if (ctx == NULL)
        return -1;

    /*
     * This should never occur because 1 byte of data always requires 2 bytes of
     * encoding, i.e.
     *  0 bytes unencoded = 0 bytes encoded
     *  1 byte unencoded  = 2 bytes encoded
     *  2 bytes unencoded = 3 bytes encoded
     *  3 bytes unencoded = 4 bytes encoded
     *  4 bytes unencoded = 6 bytes encoded
     *  etc
     */
    if (padsize == 3) {
        outl = -1;
        goto err;
    }

    /* Valid padsize values are now 0, 1 or 2 */

    FUNC1(ctx);
    FUNC5(ctx, EVP_ENCODE_CTX_USE_SRP_ALPHABET);

    /* Add any encoded padding that is required */
    if (padsize != 0
            && FUNC2(ctx, a, &outl, pad, padsize) < 0) {
        outl = -1;
        goto err;
    }
    if (FUNC2(ctx, a, &outl2, (const unsigned char *)src, size) < 0) {
        outl = -1;
        goto err;
    }
    outl += outl2;
    FUNC0(ctx, a + outl, &outl2);
    outl += outl2;

    /* Strip off the leading padding */
    if (padsize != 0) {
        if ((int)padsize >= outl) {
            outl = -1;
            goto err;
        }

        /*
         * If we added 1 byte of padding prior to encoding then we have 2 bytes
         * of "real" data which gets spread across 4 encoded bytes like this:
         *   (6 bits pad)(2 bits pad | 4 bits data)(6 bits data)(6 bits data)
         * So 1 byte of pre-encoding padding results in 1 full byte of encoded
         * padding.
         * If we added 2 bytes of padding prior to encoding this gets encoded
         * as:
         *   (6 bits pad)(6 bits pad)(4 bits pad | 2 bits data)(6 bits data)
         * So 2 bytes of pre-encoding padding results in 2 full bytes of encoded
         * padding, i.e. we have to strip the same number of bytes of padding
         * from the encoded data as we added to the pre-encoded data.
         */
        FUNC6(a, a + padsize, outl - padsize);
        outl -= padsize;
    }

 err:
    FUNC3(ctx);

    return outl;
}