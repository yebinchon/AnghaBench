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
struct TYPE_2__ {void* ctr; void* cbc; int /*<<< orphan*/  siv; } ;
typedef  int /*<<< orphan*/  SIV128_CONTEXT ;
typedef  TYPE_1__ PROV_AES_SIV_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t,void*,void*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC2(void *vctx, const unsigned char *key, size_t keylen)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;
    size_t klen  = keylen / 2;

    switch (klen) {
    case 16:
        ctx->cbc = FUNC1(NULL, "AES-128-CBC", "");
        ctx->ctr = FUNC1(NULL, "AES-128-CTR", "");
        break;
    case 24:
        ctx->cbc = FUNC1(NULL, "AES-192-CBC", "");
        ctx->ctr = FUNC1(NULL, "AES-192-CTR", "");
        break;
    case 32:
        ctx->cbc = FUNC1(NULL, "AES-256-CBC", "");
        ctx->ctr = FUNC1(NULL, "AES-256-CTR", "");
        break;
    default:
        return 0;
    }
    /*
     * klen is the length of the underlying cipher, not the input key,
     * which should be twice as long
     */
    return FUNC0(sctx, key, klen, ctx->cbc, ctx->ctr);
}