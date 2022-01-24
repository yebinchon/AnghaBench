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

/* Variables and functions */
#define  APPLICATION_DATA 134 
#define  CONNECTION_DONE 133 
#define  HANDSHAKE 132 
#define  RENEG_APPLICATION_DATA 131 
#define  RENEG_HANDSHAKE 130 
#define  RENEG_SETUP 129 
#define  SHUTDOWN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static connect_phase_t FUNC3(const SSL_TEST_CTX *test_ctx,
                                  connect_phase_t phase)
{
    switch (phase) {
    case HANDSHAKE:
        if (FUNC2(test_ctx) || FUNC1(test_ctx))
            return RENEG_APPLICATION_DATA;
        return APPLICATION_DATA;
    case RENEG_APPLICATION_DATA:
        return RENEG_SETUP;
    case RENEG_SETUP:
        if (FUNC1(test_ctx))
            return APPLICATION_DATA;
        return RENEG_HANDSHAKE;
    case RENEG_HANDSHAKE:
        return APPLICATION_DATA;
    case APPLICATION_DATA:
        return SHUTDOWN;
    case SHUTDOWN:
        return CONNECTION_DONE;
    case CONNECTION_DONE:
        FUNC0("Trying to progress after connection done");
        break;
    }
    return -1;
}