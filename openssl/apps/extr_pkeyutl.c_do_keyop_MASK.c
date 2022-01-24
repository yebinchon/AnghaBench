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
#define  EVP_PKEY_OP_DECRYPT 132 
#define  EVP_PKEY_OP_DERIVE 131 
#define  EVP_PKEY_OP_ENCRYPT 130 
#define  EVP_PKEY_OP_SIGN 129 
#define  EVP_PKEY_OP_VERIFYRECOVER 128 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, int pkey_op,
                    unsigned char *out, size_t *poutlen,
                    const unsigned char *in, size_t inlen)
{
    int rv = 0;
    switch (pkey_op) {
    case EVP_PKEY_OP_VERIFYRECOVER:
        rv = FUNC4(ctx, out, poutlen, in, inlen);
        break;

    case EVP_PKEY_OP_SIGN:
        rv = FUNC3(ctx, out, poutlen, in, inlen);
        break;

    case EVP_PKEY_OP_ENCRYPT:
        rv = FUNC2(ctx, out, poutlen, in, inlen);
        break;

    case EVP_PKEY_OP_DECRYPT:
        rv = FUNC0(ctx, out, poutlen, in, inlen);
        break;

    case EVP_PKEY_OP_DERIVE:
        rv = FUNC1(ctx, out, poutlen);
        break;

    }
    return rv;
}