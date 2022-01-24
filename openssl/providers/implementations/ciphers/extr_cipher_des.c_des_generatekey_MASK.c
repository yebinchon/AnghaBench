#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t keylen; int /*<<< orphan*/  libctx; } ;
typedef  TYPE_1__ PROV_CIPHER_CTX ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC2(PROV_CIPHER_CTX *ctx, void *ptr)
{

    DES_cblock *deskey = ptr;
    size_t kl = ctx->keylen;

    if (kl == 0 || FUNC1(ctx->libctx, ptr, kl) <= 0)
        return 0;
    FUNC0(deskey);
    return 1;
}