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
typedef  int /*<<< orphan*/  timeo ;
struct nn_thread {int dummy; } ;
typedef  int /*<<< orphan*/  maxttl ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  AF_SP_RAW ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NN_MAXTTL ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 void* dev0 ; 
 void* dev1 ; 
 int /*<<< orphan*/  device ; 
 int FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,size_t*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nn_thread*) ; 
 int /*<<< orphan*/  socket_address_a ; 
 int /*<<< orphan*/  socket_address_b ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 void* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC18 (int argc, const char *argv[])
{
    int end0;
    int end1;
    struct nn_thread thread1;
    int timeo;
    int maxttl;
    size_t sz;
    int rc;

    int port = FUNC0(argc, argv);

    FUNC9(socket_address_a, "tcp", "127.0.0.1", port);
    FUNC9(socket_address_b, "tcp", "127.0.0.1", port + 1);

    /*  Intialise the device sockets. */
    dev0 = FUNC17 (AF_SP_RAW, NN_REP);
    dev1 = FUNC17 (AF_SP_RAW, NN_REQ);

    FUNC10 (dev0, socket_address_a);
    FUNC10 (dev1, socket_address_b);

    /*  Start the device. */
    FUNC7 (&thread1, device, NULL);

    end0 = FUNC17 (AF_SP, NN_REQ);
    end1 = FUNC17 (AF_SP, NN_REP);

    /*  Test the bi-directional device TTL */ 
    FUNC12 (end0, socket_address_a);
    FUNC12 (end1, socket_address_b);

    /*  Wait for TCP to establish. */
    FUNC5 (100);

    /*  Pass a message between endpoints. */
    /*  Set up max receive timeout. */
    timeo = 100;
    FUNC16 (end0, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));
    timeo = 100;
    FUNC16 (end1, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));

    /*  Test default TTL is 8. */
    sz = sizeof (maxttl);
    maxttl = -1;
    rc = FUNC3(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, &sz);
    FUNC1 (rc == 0);
    FUNC1 (sz == sizeof (maxttl));
    FUNC1 (maxttl == 8);

    /*  Test to make sure option TTL cannot be set below 1. */
    maxttl = -1;
    rc = FUNC4(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    FUNC1 (rc < 0 && FUNC2 () == EINVAL);
    FUNC1 (maxttl == -1);
    maxttl = 0;
    rc = FUNC4(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    FUNC1 (rc < 0 && FUNC2 () == EINVAL);
    FUNC1 (maxttl == 0);

    /*  Test to set non-integer size */
    maxttl = 8;
    rc = FUNC4(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, 1);
    FUNC1 (rc < 0 && FUNC2 () == EINVAL);
    FUNC1 (maxttl == 8);

    FUNC15 (end0, "XYZ");

    FUNC14 (end1, "XYZ");

    /*  Now send a reply. */
    FUNC15 (end1, "REPLYXYZ\n");
    FUNC14 (end0, "REPLYXYZ\n");

    /*  Now set the max TTL. */
    maxttl = 1;
    FUNC16 (end0, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    FUNC16 (end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));

    FUNC15 (end0, "DROPTHIS");
    FUNC13 (end1, ETIMEDOUT);

    /*  Now set the max TTL up. */
    maxttl = 2;
    FUNC16 (end0, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    FUNC16 (end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));

    FUNC15 (end0, "DONTDROP");
    FUNC14 (end1, "DONTDROP");

   FUNC15 (end1, "GOTIT");
   FUNC14 (end0, "GOTIT");

    /*  Clean up. */
    FUNC11 (end0);
    FUNC11 (end1);

    /*  Shut down the devices. */
    FUNC6 ();

    FUNC8 (&thread1);

    return 0;
}