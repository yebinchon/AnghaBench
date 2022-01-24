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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BIGNUM *FUNC2(BN_CTX *ctx, const unsigned char *data, int sz)
{
    BIGNUM *ret = FUNC0(ctx);
    if (ret != NULL)
        FUNC1(data, sz, ret);
    return ret;
}