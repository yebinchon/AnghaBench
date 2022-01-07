
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_17__ {char* test_section; TYPE_7__* expected_ctx; } ;
struct TYPE_14__ {int ct_validation; } ;
struct TYPE_13__ {void* alpn_protocols; } ;
struct TYPE_15__ {TYPE_5__ client; TYPE_4__ server2; } ;
struct TYPE_11__ {int broken_session_ticket; int servername_callback; } ;
struct TYPE_10__ {scalar_t__ max_fragment_len_mode; void* npn_protocols; void* servername; int verify_callback; } ;
struct TYPE_12__ {TYPE_2__ server; TYPE_1__ client; } ;
struct TYPE_16__ {int app_data_size; int max_fragment_size; int resumption_expected; TYPE_6__ resume_extra; TYPE_3__ extra; int session_id_expected; int compression_expected; int session_ticket_expected; void* expected_servername; int expected_protocol; scalar_t__ expected_server_alert; int expected_client_alert; int expected_result; int handshake_mode; int method; } ;


 int EXECUTE_SSL_TEST_CTX_TEST () ;
 void* OPENSSL_strdup (char*) ;
 int SETUP_SSL_TEST_CTX_TEST_FIXTURE () ;
 int SSL_AD_UNKNOWN_CA ;
 int SSL_TEST_COMPRESSION_NO ;
 int SSL_TEST_CT_VALIDATION_STRICT ;
 int SSL_TEST_HANDSHAKE_RESUME ;
 int SSL_TEST_METHOD_DTLS ;
 int SSL_TEST_SERVERNAME_IGNORE_MISMATCH ;
 void* SSL_TEST_SERVERNAME_SERVER2 ;
 int SSL_TEST_SERVER_FAIL ;
 int SSL_TEST_SESSION_ID_IGNORE ;
 int SSL_TEST_SESSION_TICKET_YES ;
 int SSL_TEST_VERIFY_REJECT_ALL ;
 int TEST_ptr (void*) ;
 int TLS1_1_VERSION ;
 TYPE_8__* fixture ;
 int result ;
 int tear_down (TYPE_8__*) ;

__attribute__((used)) static int test_good_configuration(void)
{
    SETUP_SSL_TEST_CTX_TEST_FIXTURE();
    if (fixture == ((void*)0))
        return 0;
    fixture->test_section = "ssltest_good";
    fixture->expected_ctx->method = SSL_TEST_METHOD_DTLS;
    fixture->expected_ctx->handshake_mode = SSL_TEST_HANDSHAKE_RESUME;
    fixture->expected_ctx->app_data_size = 1024;
    fixture->expected_ctx->max_fragment_size = 2048;

    fixture->expected_ctx->expected_result = SSL_TEST_SERVER_FAIL;
    fixture->expected_ctx->expected_client_alert = SSL_AD_UNKNOWN_CA;
    fixture->expected_ctx->expected_server_alert = 0;
    fixture->expected_ctx->expected_protocol = TLS1_1_VERSION;
    fixture->expected_ctx->expected_servername = SSL_TEST_SERVERNAME_SERVER2;
    fixture->expected_ctx->session_ticket_expected = SSL_TEST_SESSION_TICKET_YES;
    fixture->expected_ctx->compression_expected = SSL_TEST_COMPRESSION_NO;
    fixture->expected_ctx->session_id_expected = SSL_TEST_SESSION_ID_IGNORE;
    fixture->expected_ctx->resumption_expected = 1;

    fixture->expected_ctx->extra.client.verify_callback =
        SSL_TEST_VERIFY_REJECT_ALL;
    fixture->expected_ctx->extra.client.servername = SSL_TEST_SERVERNAME_SERVER2;
    fixture->expected_ctx->extra.client.npn_protocols =
        OPENSSL_strdup("foo,bar");
    if (!TEST_ptr(fixture->expected_ctx->extra.client.npn_protocols))
        goto err;
    fixture->expected_ctx->extra.client.max_fragment_len_mode = 0;

    fixture->expected_ctx->extra.server.servername_callback =
        SSL_TEST_SERVERNAME_IGNORE_MISMATCH;
    fixture->expected_ctx->extra.server.broken_session_ticket = 1;

    fixture->expected_ctx->resume_extra.server2.alpn_protocols =
        OPENSSL_strdup("baz");
    if (!TEST_ptr(fixture->expected_ctx->resume_extra.server2.alpn_protocols))
        goto err;

    fixture->expected_ctx->resume_extra.client.ct_validation =
        SSL_TEST_CT_VALIDATION_STRICT;

    EXECUTE_SSL_TEST_CTX_TEST();
    return result;

err:
    tear_down(fixture);
    return 0;
}
