#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  d; int /*<<< orphan*/  mac_ctx_init; } ;
struct TYPE_5__ {int /*<<< orphan*/  byte; } ;
typedef  TYPE_1__ SIV_BLOCK ;
typedef  TYPE_2__ SIV128_CONTEXT ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 size_t SIV_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC6(SIV128_CONTEXT *ctx, const unsigned char *aad,
                      size_t len)
{
    SIV_BLOCK mac_out;
    size_t out_len = SIV_LEN;
    EVP_MAC_CTX *mac_ctx;

    FUNC4(&ctx->d);

    if ((mac_ctx = FUNC0(ctx->mac_ctx_init)) == NULL
        || !FUNC3(mac_ctx, aad, len)
        || !FUNC2(mac_ctx, mac_out.byte, &out_len,
                          sizeof(mac_out.byte))
        || out_len != SIV_LEN) {
        FUNC1(mac_ctx);
        return 0;
    }
    FUNC1(mac_ctx);

    FUNC5(&ctx->d, &mac_out);

    return 1;
}