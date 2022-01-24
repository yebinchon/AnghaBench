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

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_SOCKET ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_CREATE_SOCKET ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int,int) ; 

int FUNC5(int domain, int socktype, int protocol, int options)
{
    int sock = -1;

    if (FUNC0() != 1)
        return INVALID_SOCKET;

    sock = FUNC4(domain, socktype, protocol);
    if (sock == -1) {
        FUNC2(ERR_LIB_SYS, FUNC3(),
                       "calling socket()");
        FUNC1(BIO_F_BIO_SOCKET, BIO_R_UNABLE_TO_CREATE_SOCKET);
        return INVALID_SOCKET;
    }

    return sock;
}