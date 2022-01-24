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
struct TYPE_6__ {scalar_t__ client_protocol; scalar_t__ server_protocol; } ;
struct TYPE_5__ {scalar_t__ expected_protocol; } ;
typedef  TYPE_1__ SSL_TEST_CTX ;
typedef  TYPE_2__ HANDSHAKE_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    if (!FUNC1(result->client_protocol, result->server_protocol)) {
        FUNC0("Client has protocol %s but server has %s.",
                  FUNC2(result->client_protocol),
                  FUNC2(result->server_protocol));
        return 0;
    }

    if (test_ctx->expected_protocol) {
        if (!FUNC1(result->client_protocol,
                         test_ctx->expected_protocol)) {
            FUNC0("Protocol mismatch: expected %s, got %s.\n",
                      FUNC2(test_ctx->expected_protocol),
                      FUNC2(result->client_protocol));
            return 0;
        }
    }
    return 1;
}