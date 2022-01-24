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

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int TEST_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
    intptr_t id = (intptr_t)arg;
    int bytes;
    char msg[3];
    size_t sz_msg;
    int i;

    msg[0] = 'A' + id%26;
    msg[1] = 'a';
    msg[2] = '\0';
    /*  '\0' too */
    sz_msg = FUNC6 (msg) + 1;

    for (i = 0; i < TEST_LOOPS; i++) {
        int cli_sock = FUNC5 (AF_SP, NN_PUSH);
        msg[1] = 'a' + i%26;
        FUNC0 (cli_sock >= 0);
        FUNC0 (FUNC2 (cli_sock, SOCKET_ADDRESS) >= 0);
        /*  Give time to allow for connect to establish. */
        FUNC4 (50);
        bytes = FUNC3 (cli_sock, msg, sz_msg, 0);
        /*  This would better be handled via semaphore or condvar. */
        FUNC4 (100);
        FUNC0 ((size_t)bytes == sz_msg);
        FUNC1 (cli_sock);
    }
}