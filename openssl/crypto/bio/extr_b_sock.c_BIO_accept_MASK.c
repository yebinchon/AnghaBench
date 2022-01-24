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
typedef  int /*<<< orphan*/  BIO_ADDR ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BIO_F_BIO_ACCEPT ; 
 int /*<<< orphan*/  BIO_R_ACCEPT_ERROR ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 

int FUNC13(int sock, char **ip_port)
{
    BIO_ADDR res;
    int ret = -1;

    ret = FUNC2(sock, &res, 0);
    if (ret == (int)INVALID_SOCKET) {
        if (FUNC4(ret)) {
            ret = -2;
            goto end;
        }
        FUNC6(ERR_LIB_SYS, FUNC9(),
                       "calling accept()");
        FUNC5(BIO_F_BIO_ACCEPT, BIO_R_ACCEPT_ERROR);
        goto end;
    }

    if (ip_port != NULL) {
        char *host = FUNC0(&res, 1);
        char *port = FUNC1(&res, 1);
        if (host != NULL && port != NULL)
            *ip_port = FUNC8(FUNC12(host) + FUNC12(port) + 2);
        else
            *ip_port = NULL;

        if (*ip_port == NULL) {
            FUNC5(BIO_F_BIO_ACCEPT, ERR_R_MALLOC_FAILURE);
            FUNC3(ret);
            ret = (int)INVALID_SOCKET;
        } else {
            FUNC11(*ip_port, host);
            FUNC10(*ip_port, ":");
            FUNC10(*ip_port, port);
        }
        FUNC7(host);
        FUNC7(port);
    }

 end:
    return ret;
}