#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test_app ;
struct TYPE_19__ {scalar_t__ servername_callback; } ;
struct TYPE_20__ {TYPE_1__ server; } ;
struct TYPE_21__ {scalar_t__ method; scalar_t__ handshake_mode; TYPE_2__ extra; } ;
typedef  TYPE_3__ SSL_TEST_CTX ;
typedef  TYPE_3__ SSL_CTX ;
typedef  int /*<<< orphan*/  HANDSHAKE_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int MAX_TESTCASE_NAME_LENGTH ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 scalar_t__ SSL_TEST_HANDSHAKE_RESUME ; 
 scalar_t__ SSL_TEST_METHOD_DTLS ; 
 scalar_t__ SSL_TEST_METHOD_TLS ; 
 scalar_t__ SSL_TEST_SERVERNAME_CB_NONE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC20(int idx)
{
    int ret = 0;
    SSL_CTX *server_ctx = NULL, *server2_ctx = NULL, *client_ctx = NULL,
        *resume_server_ctx = NULL, *resume_client_ctx = NULL;
    SSL_TEST_CTX *test_ctx = NULL;
    HANDSHAKE_RESULT *result = NULL;
    char test_app[MAX_TESTCASE_NAME_LENGTH];

    FUNC0(test_app, sizeof(test_app), "test-%d", idx);

    test_ctx = FUNC11(conf, test_app);
    if (!FUNC14(test_ctx))
        goto err;

#ifndef OPENSSL_NO_DTLS
    if (test_ctx->method == SSL_TEST_METHOD_DTLS) {
        server_ctx = FUNC9(FUNC4());
        if (!FUNC15(FUNC10(server_ctx, 0)))
            goto err;
        if (test_ctx->extra.server.servername_callback !=
            SSL_TEST_SERVERNAME_CB_NONE) {
            if (!FUNC14(server2_ctx = FUNC9(FUNC4())))
                goto err;
        }
        client_ctx = FUNC9(FUNC3());
        if (!FUNC15(FUNC10(client_ctx, 0)))
            goto err;
        if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RESUME) {
            resume_server_ctx = FUNC9(FUNC4());
            if (!FUNC15(FUNC10(resume_server_ctx, 0)))
                goto err;
            resume_client_ctx = FUNC9(FUNC3());
            if (!FUNC15(FUNC10(resume_client_ctx, 0)))
                goto err;
            if (!FUNC14(resume_server_ctx)
                    || !FUNC14(resume_client_ctx))
                goto err;
        }
    }
#endif
    if (test_ctx->method == SSL_TEST_METHOD_TLS) {
        server_ctx = FUNC9(FUNC17());
        if (!FUNC15(FUNC10(server_ctx, 0)))
            goto err;
        /* SNI on resumption isn't supported/tested yet. */
        if (test_ctx->extra.server.servername_callback !=
            SSL_TEST_SERVERNAME_CB_NONE) {
            if (!FUNC14(server2_ctx = FUNC9(FUNC17())))
                goto err;
            if (!FUNC15(FUNC10(server2_ctx, 0)))
                goto err;
        }
        client_ctx = FUNC9(FUNC16());
        if (!FUNC15(FUNC10(client_ctx, 0)))
            goto err;

        if (test_ctx->handshake_mode == SSL_TEST_HANDSHAKE_RESUME) {
            resume_server_ctx = FUNC9(FUNC17());
            if (!FUNC15(FUNC10(resume_server_ctx, 0)))
                goto err;
            resume_client_ctx = FUNC9(FUNC16());
            if (!FUNC15(FUNC10(resume_client_ctx, 0)))
                goto err;
            if (!FUNC14(resume_server_ctx)
                    || !FUNC14(resume_client_ctx))
                goto err;
        }
    }

#ifdef OPENSSL_NO_AUTOLOAD_CONFIG
    if (!TEST_true(OPENSSL_init_ssl(OPENSSL_INIT_LOAD_CONFIG, NULL)))
        goto err;
#endif

    if (!FUNC14(server_ctx)
            || !FUNC14(client_ctx)
            || !FUNC13(FUNC1(conf, test_app, 0),  0))
        goto err;

    if (!FUNC7(server_ctx, "server")
        || !FUNC7(client_ctx, "client")) {
        goto err;
    }

    if (server2_ctx != NULL && !FUNC7(server2_ctx, "server2"))
        goto err;
    if (resume_server_ctx != NULL
        && !FUNC7(resume_server_ctx, "resume-server"))
        goto err;
    if (resume_client_ctx != NULL
        && !FUNC7(resume_client_ctx, "resume-client"))
        goto err;

    result = FUNC19(server_ctx, server2_ctx, client_ctx,
                          resume_server_ctx, resume_client_ctx, test_ctx);

    if (result != NULL)
        ret = FUNC18(result, test_ctx);

err:
    FUNC2(0);
    FUNC8(server_ctx);
    FUNC8(server2_ctx);
    FUNC8(client_ctx);
    FUNC8(resume_server_ctx);
    FUNC8(resume_client_ctx);
    FUNC12(test_ctx);
    FUNC5(result);
    return ret;
}