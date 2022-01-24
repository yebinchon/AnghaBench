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
 size_t FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int do_cache ; 
 scalar_t__ new_called ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** sesscache ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC13(int stateful, int idx)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int testresult = 0;
    size_t j;

    /* idx is the test number, but also the number of tickets we want */

    new_called = 0;
    do_cache = 1;

    if (!FUNC12(stateful, idx, &sctx, &cctx))
        goto end;

    if (!FUNC7(FUNC10(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL)))
        goto end;

    if (!FUNC7(FUNC9(serverssl, clientssl,
                                                SSL_ERROR_NONE))
               /* Check we got the number of tickets we were expecting */
            || !FUNC6(idx, new_called))
        goto end;

    FUNC5(clientssl);
    FUNC5(serverssl);
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC1(sctx);
    FUNC1(cctx);
    clientssl = serverssl = NULL;
    sctx = cctx = NULL;

    /*
     * Now we try to resume with the tickets we previously created. The
     * resumption attempt is expected to fail (because we're now using a new
     * SSL_CTX). We should see idx number of tickets issued again.
     */

    /* Stop caching sessions - just count them */
    do_cache = 0;

    if (!FUNC12(stateful, idx, &sctx, &cctx))
        goto end;

    if (!FUNC8(idx, sctx, cctx, 0))
        goto end;

    /* Start again with caching sessions */
    new_called = 0;
    do_cache = 1;
    FUNC1(sctx);
    FUNC1(cctx);
    sctx = cctx = NULL;

    if (!FUNC12(stateful, idx, &sctx, &cctx))
        goto end;

    if (!FUNC7(FUNC10(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL)))
        goto end;

    FUNC4(clientssl, 1);

    if (!FUNC7(FUNC9(serverssl, clientssl,
                                                SSL_ERROR_NONE))
               /* Check we got the number of tickets we were expecting */
            || !FUNC6(idx, new_called))
        goto end;

    /* After a post-handshake authentication we should get new tickets issued */
    if (!FUNC11(serverssl, clientssl)
            || !FUNC6(idx * 2, new_called))
        goto end;

    FUNC5(clientssl);
    FUNC5(serverssl);
    FUNC3(serverssl);
    FUNC3(clientssl);
    serverssl = clientssl = NULL;

    /* Stop caching sessions - just count them */
    do_cache = 0;

    /*
     * Check we can resume with all the tickets we created. This time around the
     * resumptions should all be successful.
     */
    if (!FUNC8(idx, sctx, cctx, 1))
        goto end;

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    for (j = 0; j < FUNC0(sesscache); j++) {
        FUNC2(sesscache[j]);
        sesscache[j] = NULL;
    }
    FUNC1(sctx);
    FUNC1(cctx);

    return testresult;
}