
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* expected_cipher; int expected_client_ca_names; int expected_server_ca_names; struct TYPE_5__* expected_session_ticket_app_data; struct TYPE_5__* expected_alpn_protocol; struct TYPE_5__* expected_npn_protocol; } ;
typedef TYPE_1__ SSL_TEST_CTX ;


 int OPENSSL_free (TYPE_1__*) ;
 int X509_NAME_free ;
 int sk_X509_NAME_pop_free (int ,int ) ;
 int ssl_test_ctx_free_extra_data (TYPE_1__*) ;

void SSL_TEST_CTX_free(SSL_TEST_CTX *ctx)
{
    ssl_test_ctx_free_extra_data(ctx);
    OPENSSL_free(ctx->expected_npn_protocol);
    OPENSSL_free(ctx->expected_alpn_protocol);
    OPENSSL_free(ctx->expected_session_ticket_app_data);
    sk_X509_NAME_pop_free(ctx->expected_server_ca_names, X509_NAME_free);
    sk_X509_NAME_pop_free(ctx->expected_client_ca_names, X509_NAME_free);
    OPENSSL_free(ctx->expected_cipher);
    OPENSSL_free(ctx);
}
