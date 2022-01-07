
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int SSL ;


 int SSL_ERROR_NONE ;
 int SSL_SESSION_free (int *) ;
 int SSL_free (int *) ;
 int SSL_session_reused (int *) ;
 int SSL_set_post_handshake_auth (int *,int) ;
 int SSL_set_session (int *,int *) ;
 int SSL_shutdown (int *) ;
 int TEST_false (int ) ;
 int TEST_int_eq (scalar_t__,int) ;
 int TEST_true (int ) ;
 int create_ssl_connection (int *,int *,int ) ;
 int create_ssl_objects (int *,int *,int **,int **,int *,int *) ;
 scalar_t__ new_called ;
 int post_handshake_verify (int *,int *) ;
 int ** sesscache ;

__attribute__((used)) static int check_resumption(int idx, SSL_CTX *sctx, SSL_CTX *cctx, int succ)
{
    SSL *serverssl = ((void*)0), *clientssl = ((void*)0);
    int i;


    for (i = 0; i < idx * 2; i++) {
        new_called = 0;
        if (!TEST_true(create_ssl_objects(sctx, cctx, &serverssl,
                                              &clientssl, ((void*)0), ((void*)0)))
                || !TEST_true(SSL_set_session(clientssl, sesscache[i])))
            goto end;

        SSL_set_post_handshake_auth(clientssl, 1);

        if (!TEST_true(create_ssl_connection(serverssl, clientssl,
                                                    SSL_ERROR_NONE)))
            goto end;





        if (succ) {
            if (!TEST_true(SSL_session_reused(clientssl))
                    || !TEST_int_eq(new_called, 1))
                goto end;
        } else {
            if (!TEST_false(SSL_session_reused(clientssl))
                    || !TEST_int_eq(new_called, idx))
                goto end;
        }

        new_called = 0;

        if (succ
                && (!post_handshake_verify(serverssl, clientssl)
                    || !TEST_int_eq(new_called, 1)))
            goto end;

        SSL_shutdown(clientssl);
        SSL_shutdown(serverssl);
        SSL_free(serverssl);
        SSL_free(clientssl);
        serverssl = clientssl = ((void*)0);
        SSL_SESSION_free(sesscache[i]);
        sesscache[i] = ((void*)0);
    }

    return 1;

 end:
    SSL_free(clientssl);
    SSL_free(serverssl);
    return 0;
}
