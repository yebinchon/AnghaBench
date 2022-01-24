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
struct gmac_data_st {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_GET_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int*) ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(void *vmacctx, unsigned char *out, size_t *outl,
                      size_t outsize)
{
    struct gmac_data_st *macctx = vmacctx;
    int hlen = 0;

    if (!FUNC1(macctx->ctx, out, &hlen))
        return 0;

    /* TODO(3.0) Use params */
    hlen = FUNC2();
    if (!FUNC0(macctx->ctx, EVP_CTRL_AEAD_GET_TAG,
                             hlen, out))
        return 0;

    *outl = hlen;
    return 1;
}