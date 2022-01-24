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
struct TYPE_3__ {int /*<<< orphan*/  tls13_ciphersuites; int /*<<< orphan*/  cipher_list_by_id; int /*<<< orphan*/ * cipher_list; } ;
typedef  TYPE_1__ SSL_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(SSL_CTX *ctx, const char *str)
{
    int ret = FUNC0(&(ctx->tls13_ciphersuites), str);

    if (ret && ctx->cipher_list != NULL)
        return FUNC1(&ctx->cipher_list, &ctx->cipher_list_by_id,
                                  ctx->tls13_ciphersuites);

    return ret;
}