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
struct nn_sock {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct nn_sock**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_sock*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct nn_sock*,int,int,void const*,size_t) ; 

int FUNC5 (int s, int level, int option, const void *optval,
    size_t optvallen)
{
    int rc;
    struct nn_sock *sock;

    rc = FUNC1 (&sock, s);
    if (FUNC3 (rc < 0)) {
        errno = -rc;
        return -1;
    }

    if (FUNC3 (!optval && optvallen)) {
        rc = -EFAULT;
        goto fail;
    }

    rc = FUNC4 (sock, level, option, optval, optvallen);
    if (FUNC3 (rc < 0))
        goto fail;
    FUNC0 (rc == 0, -rc);
    FUNC2 (sock);
    return 0;

fail:
    FUNC2 (sock);
    errno = -rc;
    return -1;
}