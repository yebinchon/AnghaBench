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
struct TYPE_7__ {TYPE_1__* cipher; } ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_2__ EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int EVP_CIPH_RAND_KEY ; 
 int /*<<< orphan*/  EVP_CTRL_RAND_KEY ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 

int FUNC3(EVP_CIPHER_CTX *ctx, unsigned char *key)
{
    if (ctx->cipher->flags & EVP_CIPH_RAND_KEY)
        return FUNC0(ctx, EVP_CTRL_RAND_KEY, 0, key);

#ifdef FIPS_MODE
    return 0;
#else
    {
        int kl;

        kl = FUNC1(ctx);
        if (kl <= 0 || FUNC2(key, kl) <= 0)
            return 0;
        return 1;
    }
#endif /* FIPS_MODE */
}