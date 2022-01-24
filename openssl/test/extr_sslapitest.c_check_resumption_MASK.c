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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ new_called ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** sesscache ; 

__attribute__((used)) static int FUNC12(int idx, SSL_CTX *sctx, SSL_CTX *cctx, int succ)
{
    SSL *serverssl = NULL, *clientssl = NULL;
    int i;

    /* Test that we can resume with all the tickets we got given */
    for (i = 0; i < idx * 2; i++) {
        new_called = 0;
        if (!FUNC8(FUNC10(sctx, cctx, &serverssl,
                                              &clientssl, NULL, NULL))
                || !FUNC8(FUNC4(clientssl, sesscache[i])))
            goto end;

        FUNC3(clientssl, 1);

        if (!FUNC8(FUNC9(serverssl, clientssl,
                                                    SSL_ERROR_NONE)))
            goto end;

        /*
         * Following a successful resumption we only get 1 ticket. After a
         * failed one we should get idx tickets.
         */
        if (succ) {
            if (!FUNC8(FUNC2(clientssl))
                    || !FUNC7(new_called, 1))
                goto end;
        } else {
            if (!FUNC6(FUNC2(clientssl))
                    || !FUNC7(new_called, idx))
                goto end;
        }

        new_called = 0;
        /* After a post-handshake authentication we should get 1 new ticket */
        if (succ
                && (!FUNC11(serverssl, clientssl)
                    || !FUNC7(new_called, 1)))
            goto end;

        FUNC5(clientssl);
        FUNC5(serverssl);
        FUNC1(serverssl);
        FUNC1(clientssl);
        serverssl = clientssl = NULL;
        FUNC0(sesscache[i]);
        sesscache[i] = NULL;
    }

    return 1;

 end:
    FUNC1(clientssl);
    FUNC1(serverssl);
    return 0;
}