
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_22__ {unsigned char* npn_protocols; size_t npn_protocols_len; unsigned char* alpn_protocols; size_t alpn_protocols_len; void* srp_password; void* srp_user; void* session_ticket_app_data; } ;
struct TYPE_21__ {int max_fragment_size; } ;
struct TYPE_19__ {int verify_callback; int max_fragment_len_mode; int ct_validation; int * srp_password; int * srp_user; int * alpn_protocols; int * npn_protocols; } ;
struct TYPE_18__ {int * srp_password; int * srp_user; int * session_ticket_app_data; int * alpn_protocols; int * npn_protocols; } ;
struct TYPE_17__ {int servername_callback; scalar_t__ cert_status; int * srp_password; int * srp_user; int * session_ticket_app_data; int * alpn_protocols; int * npn_protocols; scalar_t__ broken_session_ticket; } ;
struct TYPE_20__ {TYPE_3__ client; TYPE_2__ server2; TYPE_1__ server; } ;
typedef TYPE_4__ SSL_TEST_EXTRA_CONF ;
typedef TYPE_5__ SSL_TEST_CTX ;
typedef unsigned char SSL_CTX ;
typedef TYPE_6__ CTX_DATA ;


 int OPENSSL_free (unsigned char*) ;
 void* OPENSSL_strdup (int *) ;
 unsigned char* OPENSSL_zalloc (size_t) ;
 int SSL_CTX_enable_ct (unsigned char*,int ) ;
 size_t SSL_CTX_set_alpn_protos (unsigned char*,unsigned char*,size_t) ;
 int SSL_CTX_set_alpn_select_cb (unsigned char*,int ,TYPE_6__*) ;
 int SSL_CTX_set_cert_verify_callback (unsigned char*,int *,int *) ;
 int SSL_CTX_set_client_hello_cb (unsigned char*,int ,unsigned char*) ;
 int SSL_CTX_set_default_ctlog_list_file (unsigned char*) ;
 size_t SSL_CTX_set_max_send_fragment (unsigned char*,int ) ;
 int SSL_CTX_set_next_proto_select_cb (unsigned char*,int ,TYPE_6__*) ;
 int SSL_CTX_set_npn_advertised_cb (unsigned char*,int ,TYPE_6__*) ;
 int SSL_CTX_set_session_ticket_cb (unsigned char*,int *,int ,TYPE_6__*) ;
 int SSL_CTX_set_srp_cb_arg (unsigned char*,TYPE_6__*) ;
 int SSL_CTX_set_srp_client_pwd_callback (unsigned char*,int ) ;
 int SSL_CTX_set_srp_username (unsigned char*,int *) ;
 int SSL_CTX_set_srp_username_callback (unsigned char*,int ) ;
 int SSL_CTX_set_tlsext_max_fragment_length (unsigned char*,int) ;
 int SSL_CTX_set_tlsext_servername_arg (unsigned char*,unsigned char*) ;
 int SSL_CTX_set_tlsext_servername_callback (unsigned char*,int ) ;
 int SSL_CTX_set_tlsext_status_arg (unsigned char*,int *) ;
 int SSL_CTX_set_tlsext_status_cb (unsigned char*,int ) ;
 int SSL_CTX_set_tlsext_status_type (unsigned char*,int ) ;
 int SSL_CTX_set_tlsext_ticket_key_cb (unsigned char*,int ) ;
 size_t SSL_CTX_set_tlsext_ticket_keys (unsigned char*,unsigned char*,size_t) ;
 int SSL_CT_VALIDATION_PERMISSIVE ;
 int SSL_CT_VALIDATION_STRICT ;
 scalar_t__ SSL_TEST_CERT_STATUS_GOOD_RESPONSE ;
 scalar_t__ SSL_TEST_CERT_STATUS_NONE ;
 int TEST_int_eq (size_t,int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 int TLSEXT_STATUSTYPE_ocsp ;





 int broken_session_ticket_cb ;
 int client_hello_ignore_cb ;
 int client_hello_nov12_cb ;
 int client_hello_reject_cb ;
 int client_npn_cb ;
 int client_ocsp_cb ;
 int client_srp_cb ;
 int decrypt_session_ticket_cb ;
 int do_not_call_session_ticket_cb ;
 int dummy_ocsp_resp_bad_val ;
 int dummy_ocsp_resp_good_val ;
 int * generate_session_ticket_cb ;
 int parse_protos (int *,unsigned char**,size_t*) ;
 int server_alpn_cb ;
 int server_npn_cb ;
 int server_ocsp_cb ;
 int server_srp_cb ;
 int servername_ignore_cb ;
 int servername_reject_cb ;
 int verify_accept_cb ;
 int verify_reject_cb ;

__attribute__((used)) static int configure_handshake_ctx(SSL_CTX *server_ctx, SSL_CTX *server2_ctx,
                                   SSL_CTX *client_ctx,
                                   const SSL_TEST_CTX *test,
                                   const SSL_TEST_EXTRA_CONF *extra,
                                   CTX_DATA *server_ctx_data,
                                   CTX_DATA *server2_ctx_data,
                                   CTX_DATA *client_ctx_data)
{
    unsigned char *ticket_keys;
    size_t ticket_key_len;

    if (!TEST_int_eq(SSL_CTX_set_max_send_fragment(server_ctx,
                                                   test->max_fragment_size), 1))
        goto err;
    if (server2_ctx != ((void*)0)) {
        if (!TEST_int_eq(SSL_CTX_set_max_send_fragment(server2_ctx,
                                                       test->max_fragment_size),
                         1))
            goto err;
    }
    if (!TEST_int_eq(SSL_CTX_set_max_send_fragment(client_ctx,
                                                   test->max_fragment_size), 1))
        goto err;

    switch (extra->client.verify_callback) {
    case 135:
        SSL_CTX_set_cert_verify_callback(client_ctx, &verify_accept_cb, ((void*)0));
        break;
    case 133:
        SSL_CTX_set_cert_verify_callback(client_ctx, &verify_reject_cb, ((void*)0));
        break;
    case 134:
        break;
    }

    switch (extra->client.max_fragment_len_mode) {
    case 129:
    case 132:
    case 131:
    case 130:
    case 128:
        SSL_CTX_set_tlsext_max_fragment_length(
              client_ctx, extra->client.max_fragment_len_mode);
        break;
    }






    switch (extra->server.servername_callback) {
    case 137:
        SSL_CTX_set_tlsext_servername_callback(server_ctx, servername_ignore_cb);
        SSL_CTX_set_tlsext_servername_arg(server_ctx, server2_ctx);
        break;
    case 136:
        SSL_CTX_set_tlsext_servername_callback(server_ctx, servername_reject_cb);
        SSL_CTX_set_tlsext_servername_arg(server_ctx, server2_ctx);
        break;
    case 141:
        break;
    case 140:
        SSL_CTX_set_client_hello_cb(server_ctx, client_hello_ignore_cb, server2_ctx);
        break;
    case 138:
        SSL_CTX_set_client_hello_cb(server_ctx, client_hello_reject_cb, server2_ctx);
        break;
    case 139:
        SSL_CTX_set_client_hello_cb(server_ctx, client_hello_nov12_cb, server2_ctx);
    }

    if (extra->server.cert_status != SSL_TEST_CERT_STATUS_NONE) {
        SSL_CTX_set_tlsext_status_type(client_ctx, TLSEXT_STATUSTYPE_ocsp);
        SSL_CTX_set_tlsext_status_cb(client_ctx, client_ocsp_cb);
        SSL_CTX_set_tlsext_status_arg(client_ctx, ((void*)0));
        SSL_CTX_set_tlsext_status_cb(server_ctx, server_ocsp_cb);
        SSL_CTX_set_tlsext_status_arg(server_ctx,
            ((extra->server.cert_status == SSL_TEST_CERT_STATUS_GOOD_RESPONSE)
            ? &dummy_ocsp_resp_good_val : &dummy_ocsp_resp_bad_val));
    }






    if (server2_ctx != ((void*)0))
        SSL_CTX_set_tlsext_ticket_key_cb(server2_ctx,
                                         do_not_call_session_ticket_cb);

    if (extra->server.broken_session_ticket) {
        SSL_CTX_set_tlsext_ticket_key_cb(server_ctx, broken_session_ticket_cb);
    }

    if (extra->server.npn_protocols != ((void*)0)) {
        if (!TEST_true(parse_protos(extra->server.npn_protocols,
                                    &server_ctx_data->npn_protocols,
                                    &server_ctx_data->npn_protocols_len)))
            goto err;
        SSL_CTX_set_npn_advertised_cb(server_ctx, server_npn_cb,
                                      server_ctx_data);
    }
    if (extra->server2.npn_protocols != ((void*)0)) {
        if (!TEST_true(parse_protos(extra->server2.npn_protocols,
                                    &server2_ctx_data->npn_protocols,
                                    &server2_ctx_data->npn_protocols_len))
                || !TEST_ptr(server2_ctx))
            goto err;
        SSL_CTX_set_npn_advertised_cb(server2_ctx, server_npn_cb,
                                      server2_ctx_data);
    }
    if (extra->client.npn_protocols != ((void*)0)) {
        if (!TEST_true(parse_protos(extra->client.npn_protocols,
                                    &client_ctx_data->npn_protocols,
                                    &client_ctx_data->npn_protocols_len)))
            goto err;
        SSL_CTX_set_next_proto_select_cb(client_ctx, client_npn_cb,
                                         client_ctx_data);
    }

    if (extra->server.alpn_protocols != ((void*)0)) {
        if (!TEST_true(parse_protos(extra->server.alpn_protocols,
                                    &server_ctx_data->alpn_protocols,
                                    &server_ctx_data->alpn_protocols_len)))
            goto err;
        SSL_CTX_set_alpn_select_cb(server_ctx, server_alpn_cb, server_ctx_data);
    }
    if (extra->server2.alpn_protocols != ((void*)0)) {
        if (!TEST_ptr(server2_ctx)
                || !TEST_true(parse_protos(extra->server2.alpn_protocols,
                                           &server2_ctx_data->alpn_protocols,
                                           &server2_ctx_data->alpn_protocols_len
            )))
            goto err;
        SSL_CTX_set_alpn_select_cb(server2_ctx, server_alpn_cb,
                                   server2_ctx_data);
    }
    if (extra->client.alpn_protocols != ((void*)0)) {
        unsigned char *alpn_protos = ((void*)0);
        size_t alpn_protos_len;
        if (!TEST_true(parse_protos(extra->client.alpn_protocols,
                                    &alpn_protos, &alpn_protos_len))

                || !TEST_int_eq(SSL_CTX_set_alpn_protos(client_ctx, alpn_protos,
                                                        alpn_protos_len), 0))
            goto err;
        OPENSSL_free(alpn_protos);
    }

    if (extra->server.session_ticket_app_data != ((void*)0)) {
        server_ctx_data->session_ticket_app_data =
            OPENSSL_strdup(extra->server.session_ticket_app_data);
        SSL_CTX_set_session_ticket_cb(server_ctx, generate_session_ticket_cb,
                                      decrypt_session_ticket_cb, server_ctx_data);
    }
    if (extra->server2.session_ticket_app_data != ((void*)0)) {
        if (!TEST_ptr(server2_ctx))
            goto err;
        server2_ctx_data->session_ticket_app_data =
            OPENSSL_strdup(extra->server2.session_ticket_app_data);
        SSL_CTX_set_session_ticket_cb(server2_ctx, ((void*)0),
                                      decrypt_session_ticket_cb, server2_ctx_data);
    }





    ticket_key_len = SSL_CTX_set_tlsext_ticket_keys(server_ctx, ((void*)0), 0);
    if (!TEST_ptr(ticket_keys = OPENSSL_zalloc(ticket_key_len))
            || !TEST_int_eq(SSL_CTX_set_tlsext_ticket_keys(server_ctx,
                                                           ticket_keys,
                                                           ticket_key_len), 1)) {
        OPENSSL_free(ticket_keys);
        goto err;
    }
    OPENSSL_free(ticket_keys);



    if (!TEST_true(SSL_CTX_set_default_ctlog_list_file(client_ctx)))
        goto err;
    switch (extra->client.ct_validation) {
    case 143:
        if (!TEST_true(SSL_CTX_enable_ct(client_ctx,
                                         SSL_CT_VALIDATION_PERMISSIVE)))
            goto err;
        break;
    case 142:
        if (!TEST_true(SSL_CTX_enable_ct(client_ctx, SSL_CT_VALIDATION_STRICT)))
            goto err;
        break;
    case 144:
        break;
    }


    if (extra->server.srp_user != ((void*)0)) {
        SSL_CTX_set_srp_username_callback(server_ctx, server_srp_cb);
        server_ctx_data->srp_user = OPENSSL_strdup(extra->server.srp_user);
        server_ctx_data->srp_password = OPENSSL_strdup(extra->server.srp_password);
        SSL_CTX_set_srp_cb_arg(server_ctx, server_ctx_data);
    }
    if (extra->server2.srp_user != ((void*)0)) {
        if (!TEST_ptr(server2_ctx))
            goto err;
        SSL_CTX_set_srp_username_callback(server2_ctx, server_srp_cb);
        server2_ctx_data->srp_user = OPENSSL_strdup(extra->server2.srp_user);
        server2_ctx_data->srp_password = OPENSSL_strdup(extra->server2.srp_password);
        SSL_CTX_set_srp_cb_arg(server2_ctx, server2_ctx_data);
    }
    if (extra->client.srp_user != ((void*)0)) {
        if (!TEST_true(SSL_CTX_set_srp_username(client_ctx,
                                                extra->client.srp_user)))
            goto err;
        SSL_CTX_set_srp_client_pwd_callback(client_ctx, client_srp_cb);
        client_ctx_data->srp_password = OPENSSL_strdup(extra->client.srp_password);
        SSL_CTX_set_srp_cb_arg(client_ctx, client_ctx_data);
    }

    return 1;
err:
    return 0;
}
