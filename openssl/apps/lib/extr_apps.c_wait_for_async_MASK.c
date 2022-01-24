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
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  SSL ;
typedef  scalar_t__ OSSL_ASYNC_FD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,size_t*) ; 
 scalar_t__* FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(SSL *s)
{
    /* On Windows select only works for sockets, so we simply don't wait  */
#ifndef OPENSSL_SYS_WINDOWS
    int width = 0;
    fd_set asyncfds;
    OSSL_ASYNC_FD *fds;
    size_t numfds;
    size_t i;

    if (!FUNC2(s, NULL, &numfds))
        return;
    if (numfds == 0)
        return;
    fds = FUNC3(sizeof(OSSL_ASYNC_FD) * numfds, "allocate async fds");
    if (!FUNC2(s, fds, &numfds)) {
        FUNC1(fds);
        return;
    }

    FUNC0(&asyncfds);
    for (i = 0; i < numfds; i++) {
        if (width <= (int)fds[i])
            width = (int)fds[i] + 1;
        FUNC4((int)fds[i], &asyncfds);
    }
    FUNC5(width, (void *)&asyncfds, NULL, NULL, NULL);
    FUNC1(fds);
#endif
}