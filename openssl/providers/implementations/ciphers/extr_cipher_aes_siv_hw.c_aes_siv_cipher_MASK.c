#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ enc; int /*<<< orphan*/  siv; } ;
typedef  int /*<<< orphan*/  SIV128_CONTEXT ;
typedef  TYPE_1__ PROV_AES_SIV_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *vctx, unsigned char *out,
                          const unsigned char *in, size_t len)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;

    /* EncryptFinal or DecryptFinal */
    if (in == NULL)
        return FUNC3(sctx) == 0;

    /* Deal with associated data */
    if (out == NULL)
        return (FUNC0(sctx, in, len) == 1);

    if (ctx->enc)
        return FUNC2(sctx, in, out, len) > 0;

    return FUNC1(sctx, in, out, len) > 0;
}