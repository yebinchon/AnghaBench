
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ result; scalar_t__ session_ticket_do_not_call; } ;
typedef int SSL_TEST_CTX ;
typedef TYPE_1__ HANDSHAKE_RESULT ;


 scalar_t__ SSL_TEST_SUCCESS ;
 int check_alerts (TYPE_1__*,int *) ;
 int check_alpn (TYPE_1__*,int *) ;
 int check_cipher (TYPE_1__*,int *) ;
 int check_client_ca_names (TYPE_1__*,int *) ;
 int check_client_cert_type (TYPE_1__*,int *) ;
 int check_client_sign_hash (TYPE_1__*,int *) ;
 int check_client_sign_type (TYPE_1__*,int *) ;
 int check_compression (TYPE_1__*,int *) ;
 int check_npn (TYPE_1__*,int *) ;
 int check_protocol (TYPE_1__*,int *) ;
 int check_result (TYPE_1__*,int *) ;
 int check_resumption (TYPE_1__*,int *) ;
 int check_server_ca_names (TYPE_1__*,int *) ;
 int check_server_cert_type (TYPE_1__*,int *) ;
 int check_server_sign_hash (TYPE_1__*,int *) ;
 int check_server_sign_type (TYPE_1__*,int *) ;
 int check_servername (TYPE_1__*,int *) ;
 int check_session_id (TYPE_1__*,int *) ;
 int check_session_ticket (TYPE_1__*,int *) ;
 int check_session_ticket_app_data (TYPE_1__*,int *) ;
 int check_tmp_key (TYPE_1__*,int *) ;

__attribute__((used)) static int check_test(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    int ret = 1;
    ret &= check_result(result, test_ctx);
    ret &= check_alerts(result, test_ctx);
    if (result->result == SSL_TEST_SUCCESS) {
        ret &= check_protocol(result, test_ctx);
        ret &= check_servername(result, test_ctx);
        ret &= check_session_ticket(result, test_ctx);
        ret &= check_compression(result, test_ctx);
        ret &= check_session_id(result, test_ctx);
        ret &= (result->session_ticket_do_not_call == 0);

        ret &= check_npn(result, test_ctx);

        ret &= check_cipher(result, test_ctx);
        ret &= check_alpn(result, test_ctx);
        ret &= check_session_ticket_app_data(result, test_ctx);
        ret &= check_resumption(result, test_ctx);
        ret &= check_tmp_key(result, test_ctx);
        ret &= check_server_cert_type(result, test_ctx);
        ret &= check_server_sign_hash(result, test_ctx);
        ret &= check_server_sign_type(result, test_ctx);
        ret &= check_server_ca_names(result, test_ctx);
        ret &= check_client_cert_type(result, test_ctx);
        ret &= check_client_sign_hash(result, test_ctx);
        ret &= check_client_sign_type(result, test_ctx);
        ret &= check_client_ca_names(result, test_ctx);
    }
    return ret;
}
