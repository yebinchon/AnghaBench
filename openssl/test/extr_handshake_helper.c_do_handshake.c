
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ result; } ;
struct TYPE_8__ {scalar_t__ handshake_mode; int resume_extra; int extra; } ;
typedef TYPE_1__ SSL_TEST_CTX ;
typedef int SSL_SESSION ;
typedef int SSL_CTX ;
typedef TYPE_2__ HANDSHAKE_RESULT ;


 int HANDSHAKE_RESULT_free (TYPE_2__*) ;
 int SSL_SESSION_free (int *) ;
 scalar_t__ SSL_TEST_FIRST_HANDSHAKE_FAILED ;
 scalar_t__ SSL_TEST_HANDSHAKE_RESUME ;
 scalar_t__ SSL_TEST_INTERNAL_ERROR ;
 scalar_t__ SSL_TEST_SUCCESS ;
 TYPE_2__* do_handshake_internal (int *,int *,int *,TYPE_1__ const*,int *,int *,int *,int **,int **) ;

HANDSHAKE_RESULT *do_handshake(SSL_CTX *server_ctx, SSL_CTX *server2_ctx,
                               SSL_CTX *client_ctx, SSL_CTX *resume_server_ctx,
                               SSL_CTX *resume_client_ctx,
                               const SSL_TEST_CTX *test_ctx)
{
    HANDSHAKE_RESULT *result;
    SSL_SESSION *session = ((void*)0), *serv_sess = ((void*)0);

    result = do_handshake_internal(server_ctx, server2_ctx, client_ctx,
                                   test_ctx, &test_ctx->extra,
                                   ((void*)0), ((void*)0), &session, &serv_sess);
    if (result == ((void*)0)
            || test_ctx->handshake_mode != SSL_TEST_HANDSHAKE_RESUME
            || result->result == SSL_TEST_INTERNAL_ERROR)
        goto end;

    if (result->result != SSL_TEST_SUCCESS) {
        result->result = SSL_TEST_FIRST_HANDSHAKE_FAILED;
        goto end;
    }

    HANDSHAKE_RESULT_free(result);

    result = do_handshake_internal(resume_server_ctx, ((void*)0), resume_client_ctx,
                                   test_ctx, &test_ctx->resume_extra,
                                   session, serv_sess, ((void*)0), ((void*)0));
 end:
    SSL_SESSION_free(session);
    SSL_SESSION_free(serv_sess);
    return result;
}
