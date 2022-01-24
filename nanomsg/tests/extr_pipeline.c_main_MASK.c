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
 int /*<<< orphan*/  NN_PULL ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7 ()
{
    int push1;
    int push2;
    int pull1;
    int pull2;

    /*  Test fan-out. */

    push1 = FUNC6 (AF_SP, NN_PUSH);
    FUNC1 (push1, SOCKET_ADDRESS);
    pull1 = FUNC6 (AF_SP, NN_PULL);
    FUNC3 (pull1, SOCKET_ADDRESS);
    pull2 = FUNC6 (AF_SP, NN_PULL);
    FUNC3 (pull2, SOCKET_ADDRESS);

    /*  Wait till both connections are established to get messages spread
        evenly between the two pull sockets. */
    FUNC0 (10);

    FUNC5 (push1, "ABC");
    FUNC5 (push1, "DEF");

    FUNC4 (pull1, "ABC");
    FUNC4 (pull2, "DEF");

    FUNC2 (push1);
    FUNC2 (pull1);
    FUNC2 (pull2);

    /*  Test fan-in. */

    pull1 = FUNC6 (AF_SP, NN_PULL);
    FUNC1 (pull1, SOCKET_ADDRESS);
    push1 = FUNC6 (AF_SP, NN_PUSH);
    FUNC3 (push1, SOCKET_ADDRESS);
    push2 = FUNC6 (AF_SP, NN_PUSH);
    FUNC3 (push2, SOCKET_ADDRESS);

    FUNC5 (push1, "ABC");
    FUNC5 (push2, "DEF");

    FUNC4 (pull1, "ABC");
    FUNC4 (pull1, "DEF");

    FUNC2 (pull1);
    FUNC2 (push1);
    FUNC2 (push2);

    return 0;
}