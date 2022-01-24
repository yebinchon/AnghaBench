#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_2__* secretValue; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__**,unsigned char const*,int const) ; 

int FUNC3(OSSL_CMP_CTX *ctx, const unsigned char *sec,
                                  const int len)
{
    if (ctx == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }
    if (ctx->secretValue != NULL)
        FUNC1(ctx->secretValue->data, ctx->secretValue->length);
    return FUNC2(&ctx->secretValue, sec, len);
}