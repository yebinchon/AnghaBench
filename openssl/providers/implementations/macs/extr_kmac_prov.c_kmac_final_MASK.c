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
struct kmac_data_st {int out_len; scalar_t__ xof_mode; int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int KMAC_MAX_ENCODED_HEADER_LEN ; 
 scalar_t__ FUNC2 (unsigned char*,int*,int) ; 

__attribute__((used)) static int FUNC3(void *vmacctx, unsigned char *out, size_t *outl,
                      size_t outsize)
{
    struct kmac_data_st *kctx = vmacctx;
    EVP_MD_CTX *ctx = kctx->ctx;
    int lbits, len;
    unsigned char encoded_outlen[KMAC_MAX_ENCODED_HEADER_LEN];
    int ok;

    /* KMAC XOF mode sets the encoded length to 0 */
    lbits = (kctx->xof_mode ? 0 : (kctx->out_len * 8));

    ok = FUNC2(encoded_outlen, &len, lbits)
        && FUNC1(ctx, encoded_outlen, len)
        && FUNC0(ctx, out, kctx->out_len);
    if (ok && outl != NULL)
        *outl = kctx->out_len;
    return ok;
}