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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_SESS_CACHE_OFF ; 
 scalar_t__ SSL_TICKET_RETURN_ABORT ; 
 scalar_t__ SSL_TICKET_RETURN_IGNORE ; 
 scalar_t__ SSL_TICKET_RETURN_IGNORE_RENEW ; 
 scalar_t__ SSL_TICKET_RETURN_USE ; 
 scalar_t__ SSL_TICKET_RETURN_USE_RENEW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ dec_tick_called ; 
 int /*<<< orphan*/  dec_tick_cb ; 
 scalar_t__ gen_tick_called ; 
 int /*<<< orphan*/  gen_tick_cb ; 
 int /*<<< orphan*/  privkey ; 
 scalar_t__ tick_dec_ret ; 
 int /*<<< orphan*/  tick_key_cb ; 
 scalar_t__ tick_key_cb_called ; 
 int tick_key_renew ; 

__attribute__((used)) static int FUNC18(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    SSL_SESSION *clntsess = NULL;
    int testresult = 0;

#ifdef OPENSSL_NO_TLS1_2
    if (tst % 2 == 0)
        return 1;
#endif
#ifdef OPENSSL_NO_TLS1_3
    if (tst % 2 == 1)
        return 1;
#endif

    gen_tick_called = dec_tick_called = tick_key_cb_called = 0;

    /* Which tests the ticket key callback should request renewal for */
    if (tst == 10 || tst == 11)
        tick_key_renew = 1;
    else
        tick_key_renew = 0;

    /* Which tests the decrypt ticket callback should request renewal for */
    switch (tst) {
    case 0:
    case 1:
        tick_dec_ret = SSL_TICKET_RETURN_IGNORE;
        break;

    case 2:
    case 3:
        tick_dec_ret = SSL_TICKET_RETURN_IGNORE_RENEW;
        break;

    case 4:
    case 5:
        tick_dec_ret = SSL_TICKET_RETURN_USE;
        break;

    case 6:
    case 7:
        tick_dec_ret = SSL_TICKET_RETURN_USE_RENEW;
        break;

    default:
        tick_dec_ret = SSL_TICKET_RETURN_ABORT;
    }

    if (!FUNC12(FUNC16(FUNC14(),
                                       FUNC13(),
                                       TLS1_VERSION,
                                       ((tst % 2) == 0) ? TLS1_2_VERSION
                                                        : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    /*
     * We only want sessions to resume from tickets - not the session cache. So
     * switch the cache off.
     */
    if (!FUNC12(FUNC1(sctx, SSL_SESS_CACHE_OFF)))
        goto end;

    if (!FUNC12(FUNC2(sctx, gen_tick_cb, dec_tick_cb,
                                                 NULL)))
        goto end;

    if (tst >= 8
            && !FUNC12(FUNC3(sctx, tick_key_cb)))
        goto end;

    if (!FUNC12(FUNC17(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC12(FUNC15(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    /*
     * The decrypt ticket key callback in TLSv1.2 should be called even though
     * we have no ticket yet, because it gets called with a status of
     * SSL_TICKET_EMPTY (the client indicates support for tickets but does not
     * actually send any ticket data). This does not happen in TLSv1.3 because
     * it is not valid to send empty ticket data in TLSv1.3.
     */
    if (!FUNC11(gen_tick_called, 1)
            || !FUNC11(dec_tick_called, ((tst % 2) == 0) ? 1 : 0))
        goto end;

    gen_tick_called = dec_tick_called = 0;

    clntsess = FUNC6(clientssl);
    FUNC9(clientssl);
    FUNC9(serverssl);
    FUNC5(serverssl);
    FUNC5(clientssl);
    serverssl = clientssl = NULL;

    /* Now do a resumption */
    if (!FUNC12(FUNC17(sctx, cctx, &serverssl, &clientssl, NULL,
                                      NULL))
            || !FUNC12(FUNC8(clientssl, clntsess))
            || !FUNC12(FUNC15(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (tick_dec_ret == SSL_TICKET_RETURN_IGNORE
            || tick_dec_ret == SSL_TICKET_RETURN_IGNORE_RENEW) {
        if (!FUNC10(FUNC7(clientssl)))
            goto end;
    } else {
        if (!FUNC12(FUNC7(clientssl)))
            goto end;
    }

    if (!FUNC11(gen_tick_called,
                     (tick_key_renew
                      || tick_dec_ret == SSL_TICKET_RETURN_IGNORE_RENEW
                      || tick_dec_ret == SSL_TICKET_RETURN_USE_RENEW)
                     ? 1 : 0)
            || !FUNC11(dec_tick_called, 1))
        goto end;

    testresult = 1;

 end:
    FUNC4(clntsess);
    FUNC5(serverssl);
    FUNC5(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}