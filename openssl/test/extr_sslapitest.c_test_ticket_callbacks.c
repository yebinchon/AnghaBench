
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_set_session_cache_mode (int *,int ) ;
 int SSL_CTX_set_session_ticket_cb (int *,int ,int ,int *) ;
 int SSL_CTX_set_tlsext_ticket_key_cb (int *,int ) ;
 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_SESS_CACHE_OFF ;
 scalar_t__ SSL_TICKET_RETURN_ABORT ;
 scalar_t__ SSL_TICKET_RETURN_IGNORE ;
 scalar_t__ SSL_TICKET_RETURN_IGNORE_RENEW ;
 scalar_t__ SSL_TICKET_RETURN_USE ;
 scalar_t__ SSL_TICKET_RETURN_USE_RENEW ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_session_reused (int *) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (scalar_t__,int) ;
 int TEST_true (int ) ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ dec_tick_called ;
 int dec_tick_cb ;
 scalar_t__ gen_tick_called ;
 int gen_tick_cb ;
 int privkey ;
 scalar_t__ tick_dec_ret ;
 int tick_key_cb ;
 scalar_t__ tick_key_cb_called ;
 int tick_key_renew ;

__attribute__((used)) static int test_ticket_callbacks(int tst)
{
    SSL_CTX *cctx = ((void*)0), *sctx = ((void*)0);
    SSL *clientssl = ((void*)0), *serverssl = ((void*)0);
    SSL_SESSION *clntsess = ((void*)0);
    int testresult = 0;
    gen_tick_called = dec_tick_called = tick_key_cb_called = 0;


    if (tst == 10 || tst == 11)
        tick_key_renew = 1;
    else
        tick_key_renew = 0;


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

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(),
                                       TLS_client_method(),
                                       TLS1_VERSION,
                                       ((tst % 2) == 0) ? TLS1_2_VERSION
                                                        : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;





    if (!TEST_true(SSL_CTX_set_session_cache_mode(sctx, SSL_SESS_CACHE_OFF)))
        goto end;

    if (!TEST_true(SSL_CTX_set_session_ticket_cb(sctx, gen_tick_cb, dec_tick_cb,
                                                 ((void*)0))))
        goto end;

    if (tst >= 8
            && !TEST_true(SSL_CTX_set_tlsext_ticket_key_cb(sctx, tick_key_cb)))
        goto end;

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl,
                                             ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;
    if (!TEST_int_eq(gen_tick_called, 1)
            || !TEST_int_eq(dec_tick_called, ((tst % 2) == 0) ? 1 : 0))
        goto end;

    gen_tick_called = dec_tick_called = 0;

    clntsess = SSL_get1_session(clientssl);
    SSL_shutdown(clientssl);
    SSL_shutdown(serverssl);
    SSL_free(serverssl);
    SSL_free(clientssl);
    serverssl = clientssl = ((void*)0);


    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl, &clientssl, ((void*)0),
                                      ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl, clntsess))
            || !TEST_true(create_ssl_connection(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (tick_dec_ret == SSL_TICKET_RETURN_IGNORE
            || tick_dec_ret == SSL_TICKET_RETURN_IGNORE_RENEW) {
        if (!TEST_false(SSL_session_reused(clientssl)))
            goto end;
    } else {
        if (!TEST_true(SSL_session_reused(clientssl)))
            goto end;
    }

    if (!TEST_int_eq(gen_tick_called,
                     (tick_key_renew
                      || tick_dec_ret == SSL_TICKET_RETURN_IGNORE_RENEW
                      || tick_dec_ret == SSL_TICKET_RETURN_USE_RENEW)
                     ? 1 : 0)
            || !TEST_int_eq(dec_tick_called, 1))
        goto end;

    testresult = 1;

 end:
    SSL_SESSION_free(clntsess);
    SSL_free(serverssl);
    SSL_free(clientssl);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
