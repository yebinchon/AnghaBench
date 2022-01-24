#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* iv; TYPE_1__* hw; int /*<<< orphan*/  libctx; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cipher ) (TYPE_2__*,unsigned char*,unsigned char*,size_t) ;} ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,size_t,unsigned char*) ; 
 int SHA_DIGEST_LENGTH ; 
 size_t TDES_IVLEN ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned char*,unsigned char*,size_t) ; 
 unsigned char* wrap_iv ; 

__attribute__((used)) static int FUNC8(PROV_CIPHER_CTX *ctx, unsigned char *out,
                         const unsigned char *in, size_t inl)
{
    unsigned char sha1tmp[SHA_DIGEST_LENGTH];
    size_t ivlen = TDES_IVLEN;
    size_t icvlen = TDES_IVLEN;
    size_t len = inl + ivlen + icvlen;

    if (out == NULL)
        return len;

    /* Copy input to output buffer + 8 so we have space for IV */
    FUNC4(out + ivlen, in, inl);
    /* Work out ICV */
    FUNC2(in, inl, sha1tmp);
    FUNC3(out + inl + ivlen, sha1tmp, icvlen);
    FUNC1(sha1tmp, SHA_DIGEST_LENGTH);
    /* Generate random IV */
    if (FUNC5(ctx->libctx, ctx->iv, ivlen) <= 0)
        return 0;
    FUNC3(out, ctx->iv, ivlen);
    /* Encrypt everything after IV in place */
    ctx->hw->cipher(ctx, out + ivlen, out + ivlen, inl + ivlen);
    FUNC0(out, NULL, len);
    FUNC3(ctx->iv, wrap_iv, ivlen);
    ctx->hw->cipher(ctx, out, out, len);
    return len;
}