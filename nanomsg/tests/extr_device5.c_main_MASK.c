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
struct nn_thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_REP ; 
 int /*<<< orphan*/  NN_REQ ; 
 int /*<<< orphan*/  device5 ; 
 int /*<<< orphan*/  device6 ; 
 int FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_thread*) ; 
 int /*<<< orphan*/  socket_address_h ; 
 int /*<<< orphan*/  socket_address_i ; 
 int /*<<< orphan*/  socket_address_j ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11 (int argc, const char *argv[])
{
    int end0;
    int end1;
    struct nn_thread thread5;
    struct nn_thread thread6;

    int port = FUNC0(argc, argv);

    FUNC5(socket_address_h, "tcp", "127.0.0.1", port);
    FUNC5(socket_address_i, "tcp", "127.0.0.1", port + 1);
    FUNC5(socket_address_j, "tcp", "127.0.0.1", port + 2);

    /*  Test the bi-directional device with REQ/REP (headers). */

    /*  Start the devices. */
    FUNC3 (&thread5, device5, NULL);
    FUNC3 (&thread6, device6, NULL);

    /*  Create two sockets to connect to the device. */
    end0 = FUNC10 (AF_SP, NN_REQ);
    FUNC7 (end0, socket_address_h);
    end1 = FUNC10 (AF_SP, NN_REP);
    FUNC7 (end1, socket_address_j);

    /*  Wait for TCP to establish. */
    FUNC1 (100);

    /*  Pass a message between endpoints. */
    FUNC9 (end0, "XYZ");
    FUNC8 (end1, "XYZ");

    /*  Now send a reply. */
    FUNC9 (end1, "REPLYXYZ");
    FUNC8 (end0, "REPLYXYZ");

    /*  Clean up. */
    FUNC6 (end0);
    FUNC6 (end1);

    /*  Shut down the devices. */
    FUNC2 ();
    FUNC4 (&thread5);
    FUNC4 (&thread6);

    return 0;
}