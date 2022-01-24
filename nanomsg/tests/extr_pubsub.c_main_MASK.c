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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ ENOPROTOOPT ; 
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  NN_SUB ; 
 int /*<<< orphan*/  NN_SUB_SUBSCRIBE ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
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
    int pub1;
    int pub2;
    int sub1;
    int sub2;
    char buf [8];
    size_t sz;

    pub1 = FUNC11 (AF_SP, NN_PUB);
    FUNC6 (pub1, SOCKET_ADDRESS);
    sub1 = FUNC11 (AF_SP, NN_SUB);
    rc = FUNC4 (sub1, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    FUNC0 (rc == 0);
    sz = sizeof (buf);
    rc = FUNC3 (sub1, NN_SUB, NN_SUB_SUBSCRIBE, buf, &sz);
    FUNC1 (rc == -1 && FUNC2 () == ENOPROTOOPT);
    FUNC8 (sub1, SOCKET_ADDRESS);
    sub2 = FUNC11 (AF_SP, NN_SUB);
    rc = FUNC4 (sub2, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    FUNC0 (rc == 0);
    FUNC8 (sub2, SOCKET_ADDRESS);

    /*  Wait till connections are established to prevent message loss. */
    FUNC5 (10);

    FUNC10 (pub1, "0123456789012345678901234567890123456789");
    FUNC9 (sub1, "0123456789012345678901234567890123456789");
    FUNC9 (sub2, "0123456789012345678901234567890123456789");

    FUNC7 (pub1);
    FUNC7 (sub1);
    FUNC7 (sub2);

    /*  Check receiving messages from two publishers. */

    sub1 = FUNC11 (AF_SP, NN_SUB);
    rc = FUNC4 (sub1, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    FUNC0 (rc == 0);
    FUNC6 (sub1, SOCKET_ADDRESS);
    pub1 = FUNC11 (AF_SP, NN_PUB);
    FUNC8 (pub1, SOCKET_ADDRESS);
    pub2 = FUNC11 (AF_SP, NN_PUB);
    FUNC8 (pub2, SOCKET_ADDRESS);
    FUNC5 (100);

    FUNC10 (pub1, "0123456789012345678901234567890123456789");
    FUNC10 (pub2, "0123456789012345678901234567890123456789");
    FUNC9 (sub1, "0123456789012345678901234567890123456789");
    FUNC9 (sub1, "0123456789012345678901234567890123456789");

    FUNC7 (pub2);
    FUNC7 (pub1);
    FUNC7 (sub1);

    return 0;
}