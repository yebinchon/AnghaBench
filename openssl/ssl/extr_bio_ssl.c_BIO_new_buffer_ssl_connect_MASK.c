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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BIO *FUNC5(SSL_CTX *ctx)
{
#ifndef OPENSSL_NO_SOCK
    BIO *ret = NULL, *buf = NULL, *ssl = NULL;

    if ((buf = FUNC2(FUNC0())) == NULL)
        return NULL;
    if ((ssl = FUNC3(ctx)) == NULL)
        goto err;
    if ((ret = FUNC4(buf, ssl)) == NULL)
        goto err;
    return ret;
 err:
    FUNC1(buf);
    FUNC1(ssl);
#endif
    return NULL;
}