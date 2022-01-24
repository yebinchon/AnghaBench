#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int connect_phase_t ;
typedef  int /*<<< orphan*/  SSL_TEST_CTX ;
typedef  int /*<<< orphan*/  PEER ;

/* Variables and functions */
#define  APPLICATION_DATA 134 
#define  CONNECTION_DONE 133 
#define  HANDSHAKE 132 
#define  RENEG_APPLICATION_DATA 131 
#define  RENEG_HANDSHAKE 130 
#define  RENEG_SETUP 129 
#define  SHUTDOWN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(const SSL_TEST_CTX *test_ctx, PEER *peer,
                            connect_phase_t phase)
{
    switch (phase) {
    case HANDSHAKE:
        FUNC2(peer);
        break;
    case RENEG_APPLICATION_DATA:
        FUNC1(peer);
        break;
    case RENEG_SETUP:
        FUNC3(test_ctx, peer);
        break;
    case RENEG_HANDSHAKE:
        FUNC2(peer);
        break;
    case APPLICATION_DATA:
        FUNC1(peer);
        break;
    case SHUTDOWN:
        FUNC4(peer);
        break;
    case CONNECTION_DONE:
        FUNC0("Action after connection done");
        break;
    }
}