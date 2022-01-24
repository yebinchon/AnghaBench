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
struct TYPE_3__ {void* status; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ PEER ;

/* Variables and functions */
 void* PEER_ERROR ; 
 int /*<<< orphan*/  PEER_RETRY ; 
 void* PEER_SUCCESS ; 
 void* PEER_TEST_FAILURE ; 
 int SSL_ERROR_WANT_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(PEER *peer)
{
    if (!FUNC2(peer->status, PEER_RETRY)) {
        peer->status = PEER_TEST_FAILURE;
    } else {
        int ret = FUNC0(peer->ssl);

        if (ret == 1) {
            peer->status = PEER_SUCCESS;
        } else if (ret == 0) {
            peer->status = PEER_ERROR;
        } else {
            int error = FUNC1(peer->ssl, ret);
            /* Memory bios should never block with SSL_ERROR_WANT_WRITE. */
            if (error != SSL_ERROR_WANT_READ)
                peer->status = PEER_ERROR;
        }
    }
}