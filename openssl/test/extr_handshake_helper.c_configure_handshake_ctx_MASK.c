#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {unsigned char* npn_protocols; size_t npn_protocols_len; unsigned char* alpn_protocols; size_t alpn_protocols_len; void* srp_password; void* srp_user; void* session_ticket_app_data; } ;
struct TYPE_21__ {int /*<<< orphan*/  max_fragment_size; } ;
struct TYPE_19__ {int verify_callback; int max_fragment_len_mode; int ct_validation; int /*<<< orphan*/ * srp_password; int /*<<< orphan*/ * srp_user; int /*<<< orphan*/ * alpn_protocols; int /*<<< orphan*/ * npn_protocols; } ;
struct TYPE_18__ {int /*<<< orphan*/ * srp_password; int /*<<< orphan*/ * srp_user; int /*<<< orphan*/ * session_ticket_app_data; int /*<<< orphan*/ * alpn_protocols; int /*<<< orphan*/ * npn_protocols; } ;
struct TYPE_17__ {int servername_callback; scalar_t__ cert_status; int /*<<< orphan*/ * srp_password; int /*<<< orphan*/ * srp_user; int /*<<< orphan*/ * session_ticket_app_data; int /*<<< orphan*/ * alpn_protocols; int /*<<< orphan*/ * npn_protocols; scalar_t__ broken_session_ticket; } ;
struct TYPE_20__ {TYPE_3__ client; TYPE_2__ server2; TYPE_1__ server; } ;
typedef  TYPE_4__ SSL_TEST_EXTRA_CONF ;
typedef  TYPE_5__ SSL_TEST_CTX ;
typedef  unsigned char SSL_CTX ;
typedef  TYPE_6__ CTX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 size_t FUNC9 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC19 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (unsigned char*,int /*<<< orphan*/ ) ; 
 size_t FUNC24 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  SSL_CT_VALIDATION_PERMISSIVE ; 
 int /*<<< orphan*/  SSL_CT_VALIDATION_STRICT ; 
 scalar_t__ SSL_TEST_CERT_STATUS_GOOD_RESPONSE ; 
 scalar_t__ SSL_TEST_CERT_STATUS_NONE ; 
#define  SSL_TEST_CT_VALIDATION_NONE 144 
#define  SSL_TEST_CT_VALIDATION_PERMISSIVE 143 
#define  SSL_TEST_CT_VALIDATION_STRICT 142 
#define  SSL_TEST_SERVERNAME_CB_NONE 141 
#define  SSL_TEST_SERVERNAME_CLIENT_HELLO_IGNORE_MISMATCH 140 
#define  SSL_TEST_SERVERNAME_CLIENT_HELLO_NO_V12 139 
#define  SSL_TEST_SERVERNAME_CLIENT_HELLO_REJECT_MISMATCH 138 
#define  SSL_TEST_SERVERNAME_IGNORE_MISMATCH 137 
#define  SSL_TEST_SERVERNAME_REJECT_MISMATCH 136 
#define  SSL_TEST_VERIFY_ACCEPT_ALL 135 
#define  SSL_TEST_VERIFY_NONE 134 
#define  SSL_TEST_VERIFY_REJECT_ALL 133 
 int /*<<< orphan*/  FUNC25 (size_t,int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_STATUSTYPE_ocsp ; 
#define  TLSEXT_max_fragment_length_1024 132 
#define  TLSEXT_max_fragment_length_2048 131 
#define  TLSEXT_max_fragment_length_4096 130 
#define  TLSEXT_max_fragment_length_512 129 
#define  TLSEXT_max_fragment_length_DISABLED 128 
 int /*<<< orphan*/  broken_session_ticket_cb ; 
 int /*<<< orphan*/  client_hello_ignore_cb ; 
 int /*<<< orphan*/  client_hello_nov12_cb ; 
 int /*<<< orphan*/  client_hello_reject_cb ; 
 int /*<<< orphan*/  client_npn_cb ; 
 int /*<<< orphan*/  client_ocsp_cb ; 
 int /*<<< orphan*/  client_srp_cb ; 
 int /*<<< orphan*/  decrypt_session_ticket_cb ; 
 int /*<<< orphan*/  do_not_call_session_ticket_cb ; 
 int /*<<< orphan*/  dummy_ocsp_resp_bad_val ; 
 int /*<<< orphan*/  dummy_ocsp_resp_good_val ; 
 int /*<<< orphan*/ * generate_session_ticket_cb ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,unsigned char**,size_t*) ; 
 int /*<<< orphan*/  server_alpn_cb ; 
 int /*<<< orphan*/  server_npn_cb ; 
 int /*<<< orphan*/  server_ocsp_cb ; 
 int /*<<< orphan*/  server_srp_cb ; 
 int /*<<< orphan*/  servername_ignore_cb ; 
 int /*<<< orphan*/  servername_reject_cb ; 
 int /*<<< orphan*/  verify_accept_cb ; 
 int /*<<< orphan*/  verify_reject_cb ; 

__attribute__((used)) static int FUNC29(SSL_CTX *server_ctx, SSL_CTX *server2_ctx,
                                   SSL_CTX *client_ctx,
                                   const SSL_TEST_CTX *test,
                                   const SSL_TEST_EXTRA_CONF *extra,
                                   CTX_DATA *server_ctx_data,
                                   CTX_DATA *server2_ctx_data,
                                   CTX_DATA *client_ctx_data)
{
    unsigned char *ticket_keys;
    size_t ticket_key_len;

    if (!FUNC25(FUNC9(server_ctx,
                                                   test->max_fragment_size), 1))
        goto err;
    if (server2_ctx != NULL) {
        if (!FUNC25(FUNC9(server2_ctx,
                                                       test->max_fragment_size),
                         1))
            goto err;
    }
    if (!FUNC25(FUNC9(client_ctx,
                                                   test->max_fragment_size), 1))
        goto err;

    switch (extra->client.verify_callback) {
    case SSL_TEST_VERIFY_ACCEPT_ALL:
        FUNC6(client_ctx, &verify_accept_cb, NULL);
        break;
    case SSL_TEST_VERIFY_REJECT_ALL:
        FUNC6(client_ctx, &verify_reject_cb, NULL);
        break;
    case SSL_TEST_VERIFY_NONE:
        break;
    }

    switch (extra->client.max_fragment_len_mode) {
    case TLSEXT_max_fragment_length_512:
    case TLSEXT_max_fragment_length_1024:
    case TLSEXT_max_fragment_length_2048:
    case TLSEXT_max_fragment_length_4096:
    case TLSEXT_max_fragment_length_DISABLED:
        FUNC17(
              client_ctx, extra->client.max_fragment_len_mode);
        break;
    }

    /*
     * Link the two contexts for SNI purposes.
     * Also do ClientHello callbacks here, as setting both ClientHello and SNI
     * is bad.
     */
    switch (extra->server.servername_callback) {
    case SSL_TEST_SERVERNAME_IGNORE_MISMATCH:
        FUNC19(server_ctx, servername_ignore_cb);
        FUNC18(server_ctx, server2_ctx);
        break;
    case SSL_TEST_SERVERNAME_REJECT_MISMATCH:
        FUNC19(server_ctx, servername_reject_cb);
        FUNC18(server_ctx, server2_ctx);
        break;
    case SSL_TEST_SERVERNAME_CB_NONE:
        break;
    case SSL_TEST_SERVERNAME_CLIENT_HELLO_IGNORE_MISMATCH:
        FUNC7(server_ctx, client_hello_ignore_cb, server2_ctx);
        break;
    case SSL_TEST_SERVERNAME_CLIENT_HELLO_REJECT_MISMATCH:
        FUNC7(server_ctx, client_hello_reject_cb, server2_ctx);
        break;
    case SSL_TEST_SERVERNAME_CLIENT_HELLO_NO_V12:
        FUNC7(server_ctx, client_hello_nov12_cb, server2_ctx);
    }

    if (extra->server.cert_status != SSL_TEST_CERT_STATUS_NONE) {
        FUNC22(client_ctx, TLSEXT_STATUSTYPE_ocsp);
        FUNC21(client_ctx, client_ocsp_cb);
        FUNC20(client_ctx, NULL);
        FUNC21(server_ctx, server_ocsp_cb);
        FUNC20(server_ctx,
            ((extra->server.cert_status == SSL_TEST_CERT_STATUS_GOOD_RESPONSE)
            ? &dummy_ocsp_resp_good_val : &dummy_ocsp_resp_bad_val));
    }

    /*
     * The initial_ctx/session_ctx always handles the encrypt/decrypt of the
     * session ticket. This ticket_key callback is assigned to the second
     * session (assigned via SNI), and should never be invoked
     */
    if (server2_ctx != NULL)
        FUNC23(server2_ctx,
                                         do_not_call_session_ticket_cb);

    if (extra->server.broken_session_ticket) {
        FUNC23(server_ctx, broken_session_ticket_cb);
    }
#ifndef OPENSSL_NO_NEXTPROTONEG
    if (extra->server.npn_protocols != NULL) {
        if (!FUNC27(FUNC28(extra->server.npn_protocols,
                                    &server_ctx_data->npn_protocols,
                                    &server_ctx_data->npn_protocols_len)))
            goto err;
        FUNC11(server_ctx, server_npn_cb,
                                      server_ctx_data);
    }
    if (extra->server2.npn_protocols != NULL) {
        if (!FUNC27(FUNC28(extra->server2.npn_protocols,
                                    &server2_ctx_data->npn_protocols,
                                    &server2_ctx_data->npn_protocols_len))
                || !FUNC26(server2_ctx))
            goto err;
        FUNC11(server2_ctx, server_npn_cb,
                                      server2_ctx_data);
    }
    if (extra->client.npn_protocols != NULL) {
        if (!FUNC27(FUNC28(extra->client.npn_protocols,
                                    &client_ctx_data->npn_protocols,
                                    &client_ctx_data->npn_protocols_len)))
            goto err;
        FUNC10(client_ctx, client_npn_cb,
                                         client_ctx_data);
    }
#endif
    if (extra->server.alpn_protocols != NULL) {
        if (!FUNC27(FUNC28(extra->server.alpn_protocols,
                                    &server_ctx_data->alpn_protocols,
                                    &server_ctx_data->alpn_protocols_len)))
            goto err;
        FUNC5(server_ctx, server_alpn_cb, server_ctx_data);
    }
    if (extra->server2.alpn_protocols != NULL) {
        if (!FUNC26(server2_ctx)
                || !FUNC27(FUNC28(extra->server2.alpn_protocols,
                                           &server2_ctx_data->alpn_protocols,
                                           &server2_ctx_data->alpn_protocols_len
            )))
            goto err;
        FUNC5(server2_ctx, server_alpn_cb,
                                   server2_ctx_data);
    }
    if (extra->client.alpn_protocols != NULL) {
        unsigned char *alpn_protos = NULL;
        size_t alpn_protos_len;
        if (!FUNC27(FUNC28(extra->client.alpn_protocols,
                                    &alpn_protos, &alpn_protos_len))
                /* Reversed return value convention... */
                || !FUNC25(FUNC4(client_ctx, alpn_protos,
                                                        alpn_protos_len), 0))
            goto err;
        FUNC0(alpn_protos);
    }

    if (extra->server.session_ticket_app_data != NULL) {
        server_ctx_data->session_ticket_app_data =
            FUNC1(extra->server.session_ticket_app_data);
        FUNC12(server_ctx, generate_session_ticket_cb,
                                      decrypt_session_ticket_cb, server_ctx_data);
    }
    if (extra->server2.session_ticket_app_data != NULL) {
        if (!FUNC26(server2_ctx))
            goto err;
        server2_ctx_data->session_ticket_app_data =
            FUNC1(extra->server2.session_ticket_app_data);
        FUNC12(server2_ctx, NULL,
                                      decrypt_session_ticket_cb, server2_ctx_data);
    }

    /*
     * Use fixed session ticket keys so that we can decrypt a ticket created with
     * one CTX in another CTX. Don't address server2 for the moment.
     */
    ticket_key_len = FUNC24(server_ctx, NULL, 0);
    if (!FUNC26(ticket_keys = FUNC2(ticket_key_len))
            || !FUNC25(FUNC24(server_ctx,
                                                           ticket_keys,
                                                           ticket_key_len), 1)) {
        FUNC0(ticket_keys);
        goto err;
    }
    FUNC0(ticket_keys);

    /* The default log list includes EC keys, so CT can't work without EC. */
#if !defined(OPENSSL_NO_CT) && !defined(OPENSSL_NO_EC)
    if (!FUNC27(FUNC8(client_ctx)))
        goto err;
    switch (extra->client.ct_validation) {
    case SSL_TEST_CT_VALIDATION_PERMISSIVE:
        if (!FUNC27(FUNC3(client_ctx,
                                         SSL_CT_VALIDATION_PERMISSIVE)))
            goto err;
        break;
    case SSL_TEST_CT_VALIDATION_STRICT:
        if (!FUNC27(FUNC3(client_ctx, SSL_CT_VALIDATION_STRICT)))
            goto err;
        break;
    case SSL_TEST_CT_VALIDATION_NONE:
        break;
    }
#endif
#ifndef OPENSSL_NO_SRP
    if (extra->server.srp_user != NULL) {
        FUNC16(server_ctx, server_srp_cb);
        server_ctx_data->srp_user = FUNC1(extra->server.srp_user);
        server_ctx_data->srp_password = FUNC1(extra->server.srp_password);
        FUNC13(server_ctx, server_ctx_data);
    }
    if (extra->server2.srp_user != NULL) {
        if (!FUNC26(server2_ctx))
            goto err;
        FUNC16(server2_ctx, server_srp_cb);
        server2_ctx_data->srp_user = FUNC1(extra->server2.srp_user);
        server2_ctx_data->srp_password = FUNC1(extra->server2.srp_password);
        FUNC13(server2_ctx, server2_ctx_data);
    }
    if (extra->client.srp_user != NULL) {
        if (!FUNC27(FUNC15(client_ctx,
                                                extra->client.srp_user)))
            goto err;
        FUNC14(client_ctx, client_srp_cb);
        client_ctx_data->srp_password = FUNC1(extra->client.srp_password);
        FUNC13(client_ctx, client_ctx_data);
    }
#endif  /* !OPENSSL_NO_SRP */
    return 1;
err:
    return 0;
}