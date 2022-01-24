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
typedef  int /*<<< orphan*/  BIO_ADDRINFO ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BIO_LOOKUP_SERVER ; 
 int /*<<< orphan*/  BIO_PARSE_PRIO_SERV ; 
 int /*<<< orphan*/  BIO_SOCK_REUSEADDR ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char*,char**,char**,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 

int FUNC12(char *host, int bind_mode)
{
    int s = INVALID_SOCKET;
    char *h = NULL, *p = NULL;
    BIO_ADDRINFO *res = NULL;

    if (!FUNC8(host, &h, &p, BIO_PARSE_PRIO_SERV))
        return INVALID_SOCKET;

    if (FUNC9() != 1)
        return INVALID_SOCKET;

    if (FUNC7(h, p, BIO_LOOKUP_SERVER, AF_UNSPEC, SOCK_STREAM, &res) != 0)
        goto err;

    if ((s = FUNC10(FUNC1(res), FUNC4(res),
                        FUNC3(res), 0)) == INVALID_SOCKET) {
        s = INVALID_SOCKET;
        goto err;
    }

    if (!FUNC6(s, FUNC0(res),
                    bind_mode ? BIO_SOCK_REUSEADDR : 0)) {
        FUNC5(s);
        s = INVALID_SOCKET;
    }

 err:
    FUNC2(res);
    FUNC11(h);
    FUNC11(p);

    return s;
}