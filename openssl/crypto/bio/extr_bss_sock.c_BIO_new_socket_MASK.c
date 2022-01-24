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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

BIO *FUNC4(int fd, int close_flag)
{
    BIO *ret;

    ret = FUNC0(FUNC1());
    if (ret == NULL)
        return NULL;
    FUNC2(ret, fd, close_flag);
# ifndef OPENSSL_NO_KTLS
    {
        /*
         * The new socket is created successfully regardless of ktls_enable.
         * ktls_enable doesn't change any functionality of the socket, except
         * changing the setsockopt to enable the processing of ktls_start.
         * Thus, it is not a problem to call it for non-TLS sockets.
         */
        FUNC3(fd);
    }
# endif
    return ret;
}