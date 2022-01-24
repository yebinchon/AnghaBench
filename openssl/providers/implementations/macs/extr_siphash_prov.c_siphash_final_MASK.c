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
struct siphash_data_st {int /*<<< orphan*/  siphash; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 size_t FUNC1 (struct siphash_data_st*) ; 

__attribute__((used)) static int FUNC2(void *vmacctx, unsigned char *out, size_t *outl,
                         size_t outsize)
{
    struct siphash_data_st *ctx = vmacctx;
    size_t hlen = FUNC1(ctx);

    if (outsize < hlen)
        return 0;

    *outl = hlen;
    return FUNC0(&ctx->siphash, out, hlen);
}