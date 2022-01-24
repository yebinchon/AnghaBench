#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  block128_f ;
struct TYPE_5__ {int /*<<< orphan*/  ks; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct TYPE_6__ {int key_set; int /*<<< orphan*/ * str; int /*<<< orphan*/  l; int /*<<< orphan*/  m; int /*<<< orphan*/  ccm_ctx; } ;
typedef  TYPE_2__ PROV_CCM_CTX ;
typedef  TYPE_3__ PROV_ARIA_CCM_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ aria_encrypt ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(PROV_CCM_CTX *ctx,
                            const unsigned char *key, size_t keylen)
{
    PROV_ARIA_CCM_CTX *actx = (PROV_ARIA_CCM_CTX *)ctx;

    FUNC1(key, keylen * 8, &actx->ks.ks);
    FUNC0(&ctx->ccm_ctx, ctx->m, ctx->l, &actx->ks.ks,
                       (block128_f)aria_encrypt);
    ctx->str = NULL;
    ctx->key_set = 1;
    return 1;
}