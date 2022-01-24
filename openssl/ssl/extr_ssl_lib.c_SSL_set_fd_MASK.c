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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_FD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(SSL *s, int fd)
{
    int ret = 0;
    BIO *bio = NULL;

    bio = FUNC0(FUNC1());

    if (bio == NULL) {
        FUNC4(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
        goto err;
    }
    FUNC2(bio, fd, BIO_NOCLOSE);
    FUNC3(s, bio, bio);
#ifndef OPENSSL_NO_KTLS
    /*
     * The new socket is created successfully regardless of ktls_enable.
     * ktls_enable doesn't change any functionality of the socket, except
     * changing the setsockopt to enable the processing of ktls_start.
     * Thus, it is not a problem to call it for non-TLS sockets.
     */
    FUNC5(fd);
#endif /* OPENSSL_NO_KTLS */
    ret = 1;
 err:
    return ret;
}