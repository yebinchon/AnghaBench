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
typedef  void PROV_RC4_HMAC_MD5_CTX ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC4_HMAC_MD5_BLOCK_BITS ; 
 int /*<<< orphan*/  RC4_HMAC_MD5_FLAGS ; 
 int /*<<< orphan*/  RC4_HMAC_MD5_IV_BITS ; 
 int /*<<< orphan*/  RC4_HMAC_MD5_KEY_BITS ; 
 int /*<<< orphan*/  RC4_HMAC_MD5_MODE ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC3(void *provctx)
{
    PROV_RC4_HMAC_MD5_CTX *ctx = FUNC0(sizeof(*ctx));

    if (ctx != NULL)
        FUNC2(ctx, RC4_HMAC_MD5_KEY_BITS,
                               RC4_HMAC_MD5_BLOCK_BITS,
                               RC4_HMAC_MD5_IV_BITS,
                               RC4_HMAC_MD5_MODE, RC4_HMAC_MD5_FLAGS,
                               FUNC1(RC4_HMAC_MD5_KEY_BITS),
                               NULL);
     return ctx;
}