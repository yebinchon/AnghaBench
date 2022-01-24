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
 int /*<<< orphan*/  NN_BUS ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_A ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9 ()
{
    int rc;
    int bus1;
    int bus2;
    int bus3;
    char buf [3];

    /*  Create a simple bus topology consisting of 3 nodes. */
    bus1 = FUNC8 (AF_SP, NN_BUS);
    FUNC4 (bus1, SOCKET_ADDRESS_A);
    bus2 = FUNC8 (AF_SP, NN_BUS);
    FUNC4 (bus2, SOCKET_ADDRESS_B);
    FUNC6 (bus2, SOCKET_ADDRESS_A);
    bus3 = FUNC8 (AF_SP, NN_BUS);
    FUNC6 (bus3, SOCKET_ADDRESS_A);
    FUNC6 (bus3, SOCKET_ADDRESS_B);

    /*  Send a message from each node. */
    FUNC7 (bus1, "A");
    FUNC7 (bus2, "AB");
    FUNC7 (bus3, "ABC");

    /*  Check that two messages arrived at each node. */
    rc = FUNC2 (bus1, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 2 || rc == 3);
    rc = FUNC2 (bus1, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 2 || rc == 3);
    rc = FUNC2 (bus2, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 1 || rc == 3);
    rc = FUNC2 (bus2, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 1 || rc == 3);
    rc = FUNC2 (bus3, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 1 || rc == 2);
    rc = FUNC2 (bus3, buf, 3, 0);
    FUNC0 (rc >= 0);
    FUNC1 (rc == 1 || rc == 2);

    /*  Wait till both connections are established. */
    FUNC3 (10);

    FUNC5 (bus3);
    FUNC5 (bus2);
    FUNC5 (bus1);

    return 0;
}