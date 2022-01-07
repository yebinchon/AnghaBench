
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_CTX_add_session (int *,int *) ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_remove_session (int *,int *) ;
 int SSL_CTX_sess_set_get_cb (int *,int ) ;
 int SSL_CTX_sess_set_new_cb (int *,int *) ;
 int SSL_CTX_sess_set_remove_cb (int *,int *) ;
 int SSL_CTX_set_max_proto_version (int *,int) ;
 int SSL_CTX_set_min_proto_version (int *,int) ;
 int SSL_CTX_set_options (int *,int ) ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_ERROR_NONE ;
 int SSL_OP_NO_TICKET ;
 int * SSL_SESSION_dup (int *) ;
 int SSL_SESSION_free (int *) ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ;
 int SSL_SESS_CACHE_SERVER ;
 int SSL_free (int *) ;
 int * SSL_get1_session (int *) ;
 int SSL_get_session (int *) ;
 int SSL_session_reused (int *) ;
 int SSL_set_session (int *,int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (scalar_t__,int) ;
 int TEST_ptr (int *) ;
 int TEST_ptr_eq (int ,int *) ;
 int TEST_true (int ) ;
 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int TLS_client_method () ;
 int TLS_server_method () ;
 int cert ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_ctx_pair (int ,int ,int ,int ,int **,int **,int ,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ get_called ;
 int * get_sess_val ;
 int get_session_cb ;
 scalar_t__ new_called ;
 int * new_session_cb ;
 int privkey ;
 scalar_t__ remove_called ;
 int * remove_session_cb ;
 int shutdown_ssl_connection (int *,int *) ;

__attribute__((used)) static int execute_test_session(int maxprot, int use_int_cache,
                                int use_ext_cache)
{
    SSL_CTX *sctx = ((void*)0), *cctx = ((void*)0);
    SSL *serverssl1 = ((void*)0), *clientssl1 = ((void*)0);
    SSL *serverssl2 = ((void*)0), *clientssl2 = ((void*)0);

    SSL *serverssl3 = ((void*)0), *clientssl3 = ((void*)0);

    SSL_SESSION *sess1 = ((void*)0), *sess2 = ((void*)0);
    int testresult = 0, numnewsesstick = 1;

    new_called = remove_called = 0;


    if (maxprot == TLS1_3_VERSION)
        numnewsesstick = 2;

    if (!TEST_true(create_ssl_ctx_pair(TLS_server_method(), TLS_client_method(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;





    SSL_CTX_set_min_proto_version(cctx, maxprot);
    SSL_CTX_set_max_proto_version(cctx, maxprot);


    if (use_ext_cache) {
        SSL_CTX_sess_set_new_cb(cctx, new_session_cb);
        SSL_CTX_sess_set_remove_cb(cctx, remove_session_cb);
    }
    if (use_int_cache) {

        SSL_CTX_set_session_cache_mode(cctx, SSL_SESS_CACHE_CLIENT);
    } else {
        SSL_CTX_set_session_cache_mode(cctx,
                                       SSL_SESS_CACHE_CLIENT
                                       | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    }

    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl1, &clientssl1,
                                      ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl1, clientssl1,
                                                SSL_ERROR_NONE))
            || !TEST_ptr(sess1 = SSL_get1_session(clientssl1)))
        goto end;


    if (use_int_cache && !TEST_false(SSL_CTX_add_session(cctx, sess1)))
        goto end;
    if (use_ext_cache
            && (!TEST_int_eq(new_called, numnewsesstick)

                || !TEST_int_eq(remove_called, 0)))
        goto end;

    new_called = remove_called = 0;
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl2,
                                      &clientssl2, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl2, sess1))
            || !TEST_true(create_ssl_connection(serverssl2, clientssl2,
                                                SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl2)))
        goto end;

    if (maxprot == TLS1_3_VERSION) {





        if (use_ext_cache
                && (!TEST_int_eq(new_called, 1)
                    || !TEST_int_eq(remove_called, 1)))
            goto end;
    } else {




        if (use_ext_cache
                && (!TEST_int_eq(new_called, 0)
                    || !TEST_int_eq(remove_called, 0)))
            goto end;
    }

    SSL_SESSION_free(sess1);
    if (!TEST_ptr(sess1 = SSL_get1_session(clientssl2)))
        goto end;
    shutdown_ssl_connection(serverssl2, clientssl2);
    serverssl2 = clientssl2 = ((void*)0);

    new_called = remove_called = 0;
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl2,
                                      &clientssl2, ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl2, clientssl2,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!TEST_ptr(sess2 = SSL_get1_session(clientssl2)))
        goto end;

    if (use_ext_cache
            && (!TEST_int_eq(new_called, numnewsesstick)
                || !TEST_int_eq(remove_called, 0)))
        goto end;

    new_called = remove_called = 0;




    if (!TEST_true(SSL_set_session(clientssl2, sess1)))
        goto end;
    if (use_ext_cache
            && (!TEST_int_eq(new_called, 0) || !TEST_int_eq(remove_called, 1)))
        goto end;
    if (!TEST_ptr_eq(SSL_get_session(clientssl2), sess1))
        goto end;

    if (use_int_cache) {

        if (!TEST_true(SSL_CTX_add_session(cctx, sess2))
                || !TEST_true(SSL_CTX_remove_session(cctx, sess2)))
            goto end;
    }

    new_called = remove_called = 0;

    if (!TEST_false(SSL_CTX_remove_session(cctx, sess2)))
        goto end;

    if (use_ext_cache
            && (!TEST_int_eq(new_called, 0) || !TEST_int_eq(remove_called, 1)))
        goto end;


    new_called = remove_called = 0;

    SSL_CTX_set_max_proto_version(sctx, TLS1_1_VERSION);
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl3,
                                      &clientssl3, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl3, sess1))

            || !TEST_false(create_ssl_connection(serverssl3, clientssl3,
                                                 SSL_ERROR_NONE)))
        goto end;


    if (use_ext_cache
            && (!TEST_int_eq(new_called, 0) || !TEST_int_eq(remove_called, 1)))
        goto end;


    if (use_int_cache && !TEST_true(SSL_CTX_add_session(cctx, sess2)))
        goto end;



    if (use_ext_cache) {
        SSL_CTX_sess_set_new_cb(cctx, ((void*)0));
        SSL_CTX_sess_set_remove_cb(cctx, ((void*)0));
        SSL_CTX_sess_set_new_cb(sctx, new_session_cb);
        SSL_CTX_sess_set_remove_cb(sctx, remove_session_cb);
        SSL_CTX_sess_set_get_cb(sctx, get_session_cb);
        get_sess_val = ((void*)0);
    }

    SSL_CTX_set_session_cache_mode(cctx, 0);

    if (!use_int_cache)
        SSL_CTX_set_session_cache_mode(sctx,
                                       SSL_SESS_CACHE_SERVER
                                       | SSL_SESS_CACHE_NO_INTERNAL_STORE);

    SSL_free(serverssl1);
    SSL_free(clientssl1);
    serverssl1 = clientssl1 = ((void*)0);
    SSL_free(serverssl2);
    SSL_free(clientssl2);
    serverssl2 = clientssl2 = ((void*)0);
    SSL_SESSION_free(sess1);
    sess1 = ((void*)0);
    SSL_SESSION_free(sess2);
    sess2 = ((void*)0);

    SSL_CTX_set_max_proto_version(sctx, maxprot);
    if (maxprot == TLS1_2_VERSION)
        SSL_CTX_set_options(sctx, SSL_OP_NO_TICKET);
    new_called = remove_called = get_called = 0;
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl1, &clientssl1,
                                      ((void*)0), ((void*)0)))
            || !TEST_true(create_ssl_connection(serverssl1, clientssl1,
                                                SSL_ERROR_NONE))
            || !TEST_ptr(sess1 = SSL_get1_session(clientssl1))
            || !TEST_ptr(sess2 = SSL_get1_session(serverssl1)))
        goto end;

    if (use_int_cache) {
        if (maxprot == TLS1_3_VERSION && !use_ext_cache) {






            if (!TEST_false(SSL_CTX_remove_session(sctx, sess2)))
                goto end;
        } else {

            if (!TEST_false(SSL_CTX_add_session(sctx, sess2)))
                goto end;
        }
    }

    if (use_ext_cache) {
        SSL_SESSION *tmp = sess2;

        if (!TEST_int_eq(new_called, numnewsesstick)
                || !TEST_int_eq(remove_called, 0)
                || !TEST_int_eq(get_called, 0))
            goto end;





        if (use_int_cache && maxprot != TLS1_3_VERSION) {
            if (!TEST_ptr(tmp = SSL_SESSION_dup(sess2))
                    || !TEST_true(SSL_CTX_remove_session(sctx, sess2)))
                goto end;
            SSL_SESSION_free(sess2);
        }
        sess2 = tmp;
    }

    new_called = remove_called = get_called = 0;
    get_sess_val = sess2;
    if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl2,
                                      &clientssl2, ((void*)0), ((void*)0)))
            || !TEST_true(SSL_set_session(clientssl2, sess1))
            || !TEST_true(create_ssl_connection(serverssl2, clientssl2,
                                                SSL_ERROR_NONE))
            || !TEST_true(SSL_session_reused(clientssl2)))
        goto end;

    if (use_ext_cache) {
        if (!TEST_int_eq(remove_called, 0))
            goto end;

        if (maxprot == TLS1_3_VERSION) {
            if (!TEST_int_eq(new_called, 1)
                    || !TEST_int_eq(get_called, 0))
                goto end;
        } else {
            if (!TEST_int_eq(new_called, 0)
                    || !TEST_int_eq(get_called, 1))
                goto end;
        }
    }

    testresult = 1;

 end:
    SSL_free(serverssl1);
    SSL_free(clientssl1);
    SSL_free(serverssl2);
    SSL_free(clientssl2);

    SSL_free(serverssl3);
    SSL_free(clientssl3);

    SSL_SESSION_free(sess1);
    SSL_SESSION_free(sess2);
    SSL_CTX_free(sctx);
    SSL_CTX_free(cctx);

    return testresult;
}
