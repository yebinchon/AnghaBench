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
typedef  int /*<<< orphan*/  sndprio ;
typedef  int /*<<< orphan*/  rcvprio ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  NN_DONTWAIT ; 
 int /*<<< orphan*/  NN_PULL ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  NN_RCVPRIO ; 
 int /*<<< orphan*/  NN_SNDPRIO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_A ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12 ()
{
    int rc;
    int push1;
    int push2;
    int pull1;
    int pull2;
    int sndprio;
    int rcvprio;

    /*  Test send priorities. */

    pull1 = FUNC11 (AF_SP, NN_PULL);
    FUNC6 (pull1, SOCKET_ADDRESS_A);
    pull2 = FUNC11 (AF_SP, NN_PULL);
    FUNC6 (pull2, SOCKET_ADDRESS_B);
    push1 = FUNC11 (AF_SP, NN_PUSH);
    sndprio = 1;
    rc = FUNC4 (push1, NN_SOL_SOCKET, NN_SNDPRIO,
        &sndprio, sizeof (sndprio));
    FUNC0 (rc == 0);
    FUNC8 (push1, SOCKET_ADDRESS_A);
    sndprio = 2;
    rc = FUNC4 (push1, NN_SOL_SOCKET, NN_SNDPRIO,
        &sndprio, sizeof (sndprio));
    FUNC0 (rc == 0);
    FUNC8 (push1, SOCKET_ADDRESS_B);

    FUNC10 (push1, "ABC");
    FUNC10 (push1, "DEF");
    FUNC9 (pull1, "ABC");
    FUNC9 (pull1, "DEF");

    FUNC7 (pull1);
    FUNC7 (push1);
    FUNC7 (pull2);

    /*  Test receive priorities. */

    push1 = FUNC11 (AF_SP, NN_PUSH);
    FUNC6 (push1, SOCKET_ADDRESS_A);
    push2 = FUNC11 (AF_SP, NN_PUSH);
    FUNC6 (push2, SOCKET_ADDRESS_B);
    pull1 = FUNC11 (AF_SP, NN_PULL);
    rcvprio = 2;
    rc = FUNC4 (pull1, NN_SOL_SOCKET, NN_RCVPRIO,
        &rcvprio, sizeof (rcvprio));
    FUNC0 (rc == 0);
    FUNC8 (pull1, SOCKET_ADDRESS_A);
    rcvprio = 1;
    rc = FUNC4 (pull1, NN_SOL_SOCKET, NN_RCVPRIO,
        &rcvprio, sizeof (rcvprio));
    FUNC0 (rc == 0);
    FUNC8 (pull1, SOCKET_ADDRESS_B);

    FUNC10 (push1, "ABC");
    FUNC10 (push2, "DEF");
    FUNC5 (100);
    FUNC9 (pull1, "DEF");
    FUNC9 (pull1, "ABC");

    FUNC7 (pull1);
    FUNC7 (push2);
    FUNC7 (push1);

    /*  Test removing a pipe from the list. */

    push1 = FUNC11 (AF_SP, NN_PUSH);
    FUNC6 (push1, SOCKET_ADDRESS_A);
    pull1 = FUNC11 (AF_SP, NN_PULL);
    FUNC8 (pull1, SOCKET_ADDRESS_A);

    FUNC10 (push1, "ABC");
    FUNC9 (pull1, "ABC");
    FUNC7 (pull1);

    rc = FUNC3 (push1, "ABC", 3, NN_DONTWAIT);
    FUNC1 (rc == -1 && FUNC2() == EAGAIN);

    pull1 = FUNC11 (AF_SP, NN_PULL);
    FUNC8 (pull1, SOCKET_ADDRESS_A);

    FUNC10 (push1, "ABC");
    FUNC9 (pull1, "ABC");
    FUNC7 (pull1);
    FUNC7 (push1);

    return 0;
}