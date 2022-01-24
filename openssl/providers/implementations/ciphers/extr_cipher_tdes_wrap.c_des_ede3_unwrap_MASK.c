#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned char* iv; TYPE_1__* hw; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* cipher ) (TYPE_2__*,unsigned char*,unsigned char*,int) ;} ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,size_t,unsigned char*) ; 
 int SHA_DIGEST_LENGTH ; 
 int TDES_IVLEN ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  wrap_iv ; 

__attribute__((used)) static int FUNC11(PROV_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    unsigned char icv[8], iv[TDES_IVLEN], sha1tmp[SHA_DIGEST_LENGTH];
    int rv = -1;

    if (inl < 24)
        return -1;
    if (out == NULL)
        return inl - 16;

    FUNC4(ctx->iv, wrap_iv, 8);
    /* Decrypt first block which will end up as icv */
    ctx->hw->cipher(ctx, icv, in, 8);
    /* Decrypt central blocks */
    /*
     * If decrypting in place move whole output along a block so the next
     * des_ede_cbc_cipher is in place.
     */
    if (out == in) {
        FUNC5(out, out + 8, inl - 8);
        in -= 8;
    }
    ctx->hw->cipher(ctx, out, in + 8, inl - 16);
    /* Decrypt final block which will be IV */
    ctx->hw->cipher(ctx, iv, in + inl - 8, 8);
    /* Reverse order of everything */
    FUNC0(icv, NULL, 8);
    FUNC0(out, NULL, inl - 16);
    FUNC0(ctx->iv, iv, 8);
    /* Decrypt again using new IV */
    ctx->hw->cipher(ctx, out, out, inl - 16);
    ctx->hw->cipher(ctx, icv, icv, 8);
    /* Work out SHA1 hash of first portion */
    FUNC3(out, inl - 16, sha1tmp);

    if (!FUNC1(sha1tmp, icv, 8))
        rv = inl - 16;
    FUNC2(icv, 8);
    FUNC2(sha1tmp, SHA_DIGEST_LENGTH);
    FUNC2(iv, 8);
    FUNC2(ctx->iv, sizeof(ctx->iv));
    if (rv == -1)
        FUNC2(out, inl - 16);

    return rv;
}