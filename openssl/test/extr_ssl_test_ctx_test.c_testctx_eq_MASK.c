#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  session_id_expected; int /*<<< orphan*/  resumption_expected; int /*<<< orphan*/  expected_session_ticket_app_data; int /*<<< orphan*/  expected_cipher; int /*<<< orphan*/  expected_alpn_protocol; int /*<<< orphan*/  expected_npn_protocol; int /*<<< orphan*/  compression_expected; int /*<<< orphan*/  session_ticket_expected; int /*<<< orphan*/  expected_servername; int /*<<< orphan*/  expected_protocol; int /*<<< orphan*/  expected_server_alert; int /*<<< orphan*/  expected_client_alert; int /*<<< orphan*/  expected_result; int /*<<< orphan*/  resume_extra; int /*<<< orphan*/  extra; int /*<<< orphan*/  max_fragment_size; int /*<<< orphan*/  app_data_size; int /*<<< orphan*/  handshake_mode; int /*<<< orphan*/  method; } ;
typedef  TYPE_1__ SSL_TEST_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(SSL_TEST_CTX *ctx, SSL_TEST_CTX *ctx2)
{
    if (!FUNC0(ctx->method, ctx2->method)
            || !FUNC0(ctx->handshake_mode, ctx2->handshake_mode)
            || !FUNC0(ctx->app_data_size, ctx2->app_data_size)
            || !FUNC0(ctx->max_fragment_size, ctx2->max_fragment_size)
            || !FUNC2(&ctx->extra, &ctx2->extra)
            || !FUNC2(&ctx->resume_extra, &ctx2->resume_extra)
            || !FUNC0(ctx->expected_result, ctx2->expected_result)
            || !FUNC0(ctx->expected_client_alert,
                            ctx2->expected_client_alert)
            || !FUNC0(ctx->expected_server_alert,
                            ctx2->expected_server_alert)
            || !FUNC0(ctx->expected_protocol, ctx2->expected_protocol)
            || !FUNC0(ctx->expected_servername, ctx2->expected_servername)
            || !FUNC0(ctx->session_ticket_expected,
                            ctx2->session_ticket_expected)
            || !FUNC0(ctx->compression_expected,
                            ctx2->compression_expected)
            || !FUNC1(ctx->expected_npn_protocol,
                            ctx2->expected_npn_protocol)
            || !FUNC1(ctx->expected_alpn_protocol,
                            ctx2->expected_alpn_protocol)
            || !FUNC1(ctx->expected_cipher,
                            ctx2->expected_cipher)
            || !FUNC1(ctx->expected_session_ticket_app_data,
                            ctx2->expected_session_ticket_app_data)
            || !FUNC0(ctx->resumption_expected,
                            ctx2->resumption_expected)
            || !FUNC0(ctx->session_id_expected,
                            ctx2->session_id_expected))
        return 0;
    return 1;
}