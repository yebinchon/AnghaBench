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
typedef  int /*<<< orphan*/  SIV128_CONTEXT ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

SIV128_CONTEXT *FUNC3(const unsigned char *key, int klen, EVP_CIPHER* cbc, EVP_CIPHER* ctr)
{
    SIV128_CONTEXT *ctx;
    int ret;

    if ((ctx = FUNC2(sizeof(*ctx))) != NULL) {
        ret = FUNC0(ctx, key, klen, cbc, ctr);
        if (ret)
            return ctx;
        FUNC1(ctx);
    }

    return NULL;
}