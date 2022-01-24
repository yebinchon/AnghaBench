#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int client_alert_sent; int client_alert_received; int server_alert_sent; int server_alert_received; int /*<<< orphan*/  server_num_fatal_alerts_sent; int /*<<< orphan*/  client_num_fatal_alerts_sent; } ;
struct TYPE_5__ {int expected_client_alert; int expected_server_alert; } ;
typedef  TYPE_1__ SSL_TEST_CTX ;
typedef  TYPE_2__ HANDSHAKE_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!FUNC2(result->client_alert_sent,
                     result->client_alert_received)) {
        FUNC1("Client sent alert %s but server received %s.",
                  FUNC4(result->client_alert_sent),
                  FUNC4(result->client_alert_received));
        /*
         * We can't bail here because the peer doesn't always get far enough
         * to process a received alert. Specifically, in protocol version
         * negotiation tests, we have the following scenario.
         * Client supports TLS v1.2 only; Server supports TLS v1.1.
         * Client proposes TLS v1.2; server responds with 1.1;
         * Client now sends a protocol alert, using TLS v1.2 in the header.
         * The server, however, rejects the alert because of version mismatch
         * in the record layer; therefore, the server appears to never
         * receive the alert.
         */
        /* return 0; */
    }

    if (!FUNC2(result->server_alert_sent,
                     result->server_alert_received)) {
        FUNC1("Server sent alert %s but client received %s.",
                  FUNC4(result->server_alert_sent),
                  FUNC4(result->server_alert_received));
        /* return 0; */
    }

    /* Tolerate an alert if one wasn't explicitly specified in the test. */
    if (test_ctx->expected_client_alert
        /*
         * The info callback alert value is computed as
         * (s->s3->send_alert[0] << 8) | s->s3->send_alert[1]
         * where the low byte is the alert code and the high byte is other stuff.
         */
        && (result->client_alert_sent & 0xff) != test_ctx->expected_client_alert) {
        FUNC0("ClientAlert mismatch: expected %s, got %s.",
                   FUNC4(test_ctx->expected_client_alert),
                   FUNC4(result->client_alert_sent));
        return 0;
    }

    if (test_ctx->expected_server_alert
        && (result->server_alert_sent & 0xff) != test_ctx->expected_server_alert) {
        FUNC0("ServerAlert mismatch: expected %s, got %s.",
                   FUNC4(test_ctx->expected_server_alert),
                   FUNC4(result->server_alert_sent));
        return 0;
    }

    if (!FUNC3(result->client_num_fatal_alerts_sent, 1))
        return 0;
    if (!FUNC3(result->server_num_fatal_alerts_sent, 1))
        return 0;
    return 1;
}