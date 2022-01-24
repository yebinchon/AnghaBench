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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 scalar_t__ FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const*,size_t,unsigned char*) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,size_t) ; 
 unsigned char* wrap_iv ; 

__attribute__((used)) static int FUNC8(EVP_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    if (out == NULL)
        return inl + 16;
    /* Copy input to output buffer + 8 so we have space for IV */
    FUNC7(out + 8, in, inl);
    /* Work out ICV */
    FUNC4(in, inl, sha1tmp);
    FUNC6(out + inl + 8, sha1tmp, 8);
    FUNC2(sha1tmp, SHA_DIGEST_LENGTH);
    /* Generate random IV */
    if (FUNC3(FUNC1(ctx), 8) <= 0)
        return -1;
    FUNC6(out, FUNC1(ctx), 8);
    /* Encrypt everything after IV in place */
    FUNC5(ctx, out + 8, out + 8, inl + 8);
    FUNC0(out, NULL, inl + 16);
    FUNC6(FUNC1(ctx), wrap_iv, 8);
    FUNC5(ctx, out, out, inl + 16);
    return inl + 16;
}