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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int SSL_SESS_CACHE_CLIENT ; 
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ; 
 int SSL_SESS_CACHE_SERVER ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int TLS1_1_VERSION ; 
 int TLS1_2_VERSION ; 
 int TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ get_called ; 
 int /*<<< orphan*/ * get_sess_val ; 
 int /*<<< orphan*/  get_session_cb ; 
 scalar_t__ new_called ; 
 int /*<<< orphan*/ * new_session_cb ; 
 int /*<<< orphan*/  privkey ; 
 scalar_t__ remove_called ; 
 int /*<<< orphan*/ * remove_session_cb ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(int maxprot, int use_int_cache,
                                int use_ext_cache)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl1 = NULL, *clientssl1 = NULL;
    SSL *serverssl2 = NULL, *clientssl2 = NULL;
# ifndef OPENSSL_NO_TLS1_1
    SSL *serverssl3 = NULL, *clientssl3 = NULL;
# endif
    SSL_SESSION *sess1 = NULL, *sess2 = NULL;
    int testresult = 0, numnewsesstick = 1;

    new_called = remove_called = 0;

    /* TLSv1.3 sends 2 NewSessionTickets */
    if (maxprot == TLS1_3_VERSION)
        numnewsesstick = 2;

    if (!FUNC21(FUNC25(FUNC23(), FUNC22(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    /*
     * Only allow the max protocol version so we can force a connection failure
     * later
     */
    FUNC7(cctx, maxprot);
    FUNC6(cctx, maxprot);

    /* Set up session cache */
    if (use_ext_cache) {
        FUNC4(cctx, new_session_cb);
        FUNC5(cctx, remove_session_cb);
    }
    if (use_int_cache) {
        /* Also covers instance where both are set */
        FUNC9(cctx, SSL_SESS_CACHE_CLIENT);
    } else {
        FUNC9(cctx,
                                       SSL_SESS_CACHE_CLIENT
                                       | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    }

    if (!FUNC21(FUNC26(sctx, cctx, &serverssl1, &clientssl1,
                                      NULL, NULL))
            || !FUNC21(FUNC24(serverssl1, clientssl1,
                                                SSL_ERROR_NONE))
            || !FUNC19(sess1 = FUNC13(clientssl1)))
        goto end;

    /* Should fail because it should already be in the cache */
    if (use_int_cache && !FUNC17(FUNC0(cctx, sess1)))
        goto end;
    if (use_ext_cache
            && (!FUNC18(new_called, numnewsesstick)

                || !FUNC18(remove_called, 0)))
        goto end;

    new_called = remove_called = 0;
    if (!FUNC21(FUNC26(sctx, cctx, &serverssl2,
                                      &clientssl2, NULL, NULL))
            || !FUNC21(FUNC16(clientssl2, sess1))
            || !FUNC21(FUNC24(serverssl2, clientssl2,
                                                SSL_ERROR_NONE))
            || !FUNC21(FUNC15(clientssl2)))
        goto end;

    if (maxprot == TLS1_3_VERSION) {
        /*
         * In TLSv1.3 we should have created a new session even though we have
         * resumed. Since we attempted a resume we should also have removed the
         * old ticket from the cache so that we try to only use tickets once.
         */
        if (use_ext_cache
                && (!FUNC18(new_called, 1)
                    || !FUNC18(remove_called, 1)))
            goto end;
    } else {
        /*
         * In TLSv1.2 we expect to have resumed so no sessions added or
         * removed.
         */
        if (use_ext_cache
                && (!FUNC18(new_called, 0)
                    || !FUNC18(remove_called, 0)))
            goto end;
    }

    FUNC11(sess1);
    if (!FUNC19(sess1 = FUNC13(clientssl2)))
        goto end;
    FUNC27(serverssl2, clientssl2);
    serverssl2 = clientssl2 = NULL;

    new_called = remove_called = 0;
    if (!FUNC21(FUNC26(sctx, cctx, &serverssl2,
                                      &clientssl2, NULL, NULL))
            || !FUNC21(FUNC24(serverssl2, clientssl2,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!FUNC19(sess2 = FUNC13(clientssl2)))
        goto end;

    if (use_ext_cache
            && (!FUNC18(new_called, numnewsesstick)
                || !FUNC18(remove_called, 0)))
        goto end;

    new_called = remove_called = 0;
    /*
     * This should clear sess2 from the cache because it is a "bad" session.
     * See SSL_set_session() documentation.
     */
    if (!FUNC21(FUNC16(clientssl2, sess1)))
        goto end;
    if (use_ext_cache
            && (!FUNC18(new_called, 0) || !FUNC18(remove_called, 1)))
        goto end;
    if (!FUNC20(FUNC14(clientssl2), sess1))
        goto end;

    if (use_int_cache) {
        /* Should succeeded because it should not already be in the cache */
        if (!FUNC21(FUNC0(cctx, sess2))
                || !FUNC21(FUNC2(cctx, sess2)))
            goto end;
    }

    new_called = remove_called = 0;
    /* This shouldn't be in the cache so should fail */
    if (!FUNC17(FUNC2(cctx, sess2)))
        goto end;

    if (use_ext_cache
            && (!FUNC18(new_called, 0) || !FUNC18(remove_called, 1)))
        goto end;

# if !defined(OPENSSL_NO_TLS1_1)
    new_called = remove_called = 0;
    /* Force a connection failure */
    FUNC6(sctx, TLS1_1_VERSION);
    if (!FUNC21(FUNC26(sctx, cctx, &serverssl3,
                                      &clientssl3, NULL, NULL))
            || !FUNC21(FUNC16(clientssl3, sess1))
            /* This should fail because of the mismatched protocol versions */
            || !FUNC17(FUNC24(serverssl3, clientssl3,
                                                 SSL_ERROR_NONE)))
        goto end;

    /* We should have automatically removed the session from the cache */
    if (use_ext_cache
            && (!FUNC18(new_called, 0) || !FUNC18(remove_called, 1)))
        goto end;

    /* Should succeed because it should not already be in the cache */
    if (use_int_cache && !FUNC21(FUNC0(cctx, sess2)))
        goto end;
# endif

    /* Now do some tests for server side caching */
    if (use_ext_cache) {
        FUNC4(cctx, NULL);
        FUNC5(cctx, NULL);
        FUNC4(sctx, new_session_cb);
        FUNC5(sctx, remove_session_cb);
        FUNC3(sctx, get_session_cb);
        get_sess_val = NULL;
    }

    FUNC9(cctx, 0);
    /* Internal caching is the default on the server side */
    if (!use_int_cache)
        FUNC9(sctx,
                                       SSL_SESS_CACHE_SERVER
                                       | SSL_SESS_CACHE_NO_INTERNAL_STORE);

    FUNC12(serverssl1);
    FUNC12(clientssl1);
    serverssl1 = clientssl1 = NULL;
    FUNC12(serverssl2);
    FUNC12(clientssl2);
    serverssl2 = clientssl2 = NULL;
    FUNC11(sess1);
    sess1 = NULL;
    FUNC11(sess2);
    sess2 = NULL;

    FUNC6(sctx, maxprot);
    if (maxprot == TLS1_2_VERSION)
        FUNC8(sctx, SSL_OP_NO_TICKET);
    new_called = remove_called = get_called = 0;
    if (!FUNC21(FUNC26(sctx, cctx, &serverssl1, &clientssl1,
                                      NULL, NULL))
            || !FUNC21(FUNC24(serverssl1, clientssl1,
                                                SSL_ERROR_NONE))
            || !FUNC19(sess1 = FUNC13(clientssl1))
            || !FUNC19(sess2 = FUNC13(serverssl1)))
        goto end;

    if (use_int_cache) {
        if (maxprot == TLS1_3_VERSION && !use_ext_cache) {
            /*
             * In TLSv1.3 it should not have been added to the internal cache,
             * except in the case where we also have an external cache (in that
             * case it gets added to the cache in order to generate remove
             * events after timeout).
             */
            if (!FUNC17(FUNC2(sctx, sess2)))
                goto end;
        } else {
            /* Should fail because it should already be in the cache */
            if (!FUNC17(FUNC0(sctx, sess2)))
                goto end;
        }
    }

    if (use_ext_cache) {
        SSL_SESSION *tmp = sess2;

        if (!FUNC18(new_called, numnewsesstick)
                || !FUNC18(remove_called, 0)
                || !FUNC18(get_called, 0))
            goto end;
        /*
         * Delete the session from the internal cache to force a lookup from
         * the external cache. We take a copy first because
         * SSL_CTX_remove_session() also marks the session as non-resumable.
         */
        if (use_int_cache && maxprot != TLS1_3_VERSION) {
            if (!FUNC19(tmp = FUNC10(sess2))
                    || !FUNC21(FUNC2(sctx, sess2)))
                goto end;
            FUNC11(sess2);
        }
        sess2 = tmp;
    }

    new_called = remove_called = get_called = 0;
    get_sess_val = sess2;
    if (!FUNC21(FUNC26(sctx, cctx, &serverssl2,
                                      &clientssl2, NULL, NULL))
            || !FUNC21(FUNC16(clientssl2, sess1))
            || !FUNC21(FUNC24(serverssl2, clientssl2,
                                                SSL_ERROR_NONE))
            || !FUNC21(FUNC15(clientssl2)))
        goto end;

    if (use_ext_cache) {
        if (!FUNC18(remove_called, 0))
            goto end;

        if (maxprot == TLS1_3_VERSION) {
            if (!FUNC18(new_called, 1)
                    || !FUNC18(get_called, 0))
                goto end;
        } else {
            if (!FUNC18(new_called, 0)
                    || !FUNC18(get_called, 1))
                goto end;
        }
    }

    testresult = 1;

 end:
    FUNC12(serverssl1);
    FUNC12(clientssl1);
    FUNC12(serverssl2);
    FUNC12(clientssl2);
# ifndef OPENSSL_NO_TLS1_1
    FUNC12(serverssl3);
    FUNC12(clientssl3);
# endif
    FUNC11(sess1);
    FUNC11(sess2);
    FUNC1(sctx);
    FUNC1(cctx);

    return testresult;
}