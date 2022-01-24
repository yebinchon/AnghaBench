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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

BIO *FUNC5(SSL_CTX *ctx)
{
#ifndef OPENSSL_NO_SOCK
    BIO *ret = NULL, *con = NULL, *ssl = NULL;

    if ((con = FUNC1(FUNC4())) == NULL)
        return NULL;
    if ((ssl = FUNC2(ctx, 1)) == NULL)
        goto err;
    if ((ret = FUNC3(ssl, con)) == NULL)
        goto err;
    return ret;
 err:
    FUNC0(con);
#endif
    return NULL;
}