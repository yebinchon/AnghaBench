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
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7 (int argc, const char *argv[])
{
    int s;
    int rc;
    int eid;
    char socket_address[128];

    FUNC3(socket_address, "tcp", "127.0.0.1",
            FUNC1(argc, argv));

    /*  Run endpoint shutdown and socket shutdown in parallel. */
    s = FUNC6 (AF_SP, NN_REQ);
    eid = FUNC5 (s, socket_address);
    rc = FUNC2 (s, eid);
    FUNC0 (rc == 0);
    FUNC4 (s);

    return 0;
}