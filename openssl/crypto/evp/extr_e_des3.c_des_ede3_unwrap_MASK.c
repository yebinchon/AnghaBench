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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,size_t,unsigned char*) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  wrap_iv ; 

__attribute__((used)) static int FUNC8(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    unsigned char icv[8], iv[8], sha1tmp[SHA_DIGEST_LENGTH];
    int rv = -1;
    if (inl < 24)
        return -1;
    if (out == NULL)
        return inl - 16;
    FUNC6(FUNC2(ctx), wrap_iv, 8);
    /* Decrypt first block which will end up as icv */
    FUNC5(ctx, icv, in, 8);
    /* Decrypt central blocks */
    /*
     * If decrypting in place move whole output along a block so the next
     * des_ede_cbc_cipher is in place.
     */
    if (out == in) {
        FUNC7(out, out + 8, inl - 8);
        in -= 8;
    }
    FUNC5(ctx, out, in + 8, inl - 16);
    /* Decrypt final block which will be IV */
    FUNC5(ctx, iv, in + inl - 8, 8);
    /* Reverse order of everything */
    FUNC0(icv, NULL, 8);
    FUNC0(out, NULL, inl - 16);
    FUNC0(FUNC2(ctx), iv, 8);
    /* Decrypt again using new IV */
    FUNC5(ctx, out, out, inl - 16);
    FUNC5(ctx, icv, icv, 8);
    /* Work out SHA1 hash of first portion */
    FUNC4(out, inl - 16, sha1tmp);

    if (!FUNC1(sha1tmp, icv, 8))
        rv = inl - 16;
    FUNC3(icv, 8);
    FUNC3(sha1tmp, SHA_DIGEST_LENGTH);
    FUNC3(iv, 8);
    FUNC3(FUNC2(ctx), 8);
    if (rv == -1)
        FUNC3(out, inl - 16);

    return rv;
}