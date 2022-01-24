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
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  BIO_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  BIO_F_BIO_CONNECT ; 
 int /*<<< orphan*/  BIO_R_CONNECT_ERROR ; 
 int /*<<< orphan*/  BIO_R_INVALID_SOCKET ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_KEEPALIVE ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_NODELAY ; 
 int BIO_SOCK_KEEPALIVE ; 
 int BIO_SOCK_NODELAY ; 
 int BIO_SOCK_NONBLOCK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,int) ; 

int FUNC9(int sock, const BIO_ADDR *addr, int options)
{
    const int on = 1;

    if (sock == -1) {
        FUNC4(BIO_F_BIO_CONNECT, BIO_R_INVALID_SOCKET);
        return 0;
    }

    if (!FUNC3(sock, (options & BIO_SOCK_NONBLOCK) != 0))
        return 0;

    if (options & BIO_SOCK_KEEPALIVE) {
        if (FUNC8(sock, SOL_SOCKET, SO_KEEPALIVE,
                       (const void *)&on, sizeof(on)) != 0) {
            FUNC5(ERR_LIB_SYS, FUNC7(),
                           "calling setsockopt()");
            FUNC4(BIO_F_BIO_CONNECT, BIO_R_UNABLE_TO_KEEPALIVE);
            return 0;
        }
    }

    if (options & BIO_SOCK_NODELAY) {
        if (FUNC8(sock, IPPROTO_TCP, TCP_NODELAY,
                       (const void *)&on, sizeof(on)) != 0) {
            FUNC5(ERR_LIB_SYS, FUNC7(),
                           "calling setsockopt()");
            FUNC4(BIO_F_BIO_CONNECT, BIO_R_UNABLE_TO_NODELAY);
            return 0;
        }
    }

    if (FUNC6(sock, FUNC0(addr),
                FUNC1(addr)) == -1) {
        if (!FUNC2(-1)) {
            FUNC5(ERR_LIB_SYS, FUNC7(),
                           "calling connect()");
            FUNC4(BIO_F_BIO_CONNECT, BIO_R_CONNECT_ERROR);
        }
        return 0;
    }
    return 1;
}