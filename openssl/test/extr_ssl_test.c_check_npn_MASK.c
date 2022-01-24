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
struct TYPE_6__ {int /*<<< orphan*/  client_npn_negotiated; int /*<<< orphan*/  server_npn_negotiated; } ;
struct TYPE_5__ {int /*<<< orphan*/  expected_npn_protocol; } ;
typedef  TYPE_1__ SSL_TEST_CTX ;
typedef  TYPE_2__ HANDSHAKE_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    int ret = 1;
    if (!FUNC0(result->client_npn_negotiated,
                     result->server_npn_negotiated))
        ret = 0;
    if (!FUNC0(test_ctx->expected_npn_protocol,
                     result->client_npn_negotiated))
        ret = 0;
    return ret;
}