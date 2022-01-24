#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  status; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ PEER ;

/* Variables and functions */
 int /*<<< orphan*/  PEER_ERROR ; 
 int /*<<< orphan*/  PEER_RETRY ; 
 int /*<<< orphan*/  PEER_SUCCESS ; 
 int /*<<< orphan*/  PEER_TEST_FAILURE ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(PEER *peer)
{
    int ret;

    if (!FUNC2(peer->status, PEER_RETRY)) {
        peer->status = PEER_TEST_FAILURE;
        return;
    }
    ret = FUNC1(peer->ssl);

    if (ret == 1) {
        peer->status = PEER_SUCCESS;
    } else if (ret < 0) { /* On 0, we retry. */
        int error = FUNC0(peer->ssl, ret);

        if (error != SSL_ERROR_WANT_READ && error != SSL_ERROR_WANT_WRITE)
            peer->status = PEER_ERROR;
    }
}