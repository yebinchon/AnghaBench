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
 int /*<<< orphan*/  device4 ; 
 int FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nn_thread*) ; 
 int /*<<< orphan*/  socket_address_f ; 
 int /*<<< orphan*/  socket_address_g ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11 (int argc, const char *argv[])
{
    int endf;
    int endg;
    struct nn_thread thread4;

    int port = FUNC0(argc, argv);

    FUNC5(socket_address_f, "tcp", "127.0.0.1", port);
    FUNC5(socket_address_g, "tcp", "127.0.0.1", port + 1);

    /*  Test the bi-directional device with REQ/REP (headers). */

    /*  Start the device. */
    FUNC3 (&thread4, device4, NULL);

    /*  Create two sockets to connect to the device. */
    endf = FUNC10 (AF_SP, NN_REQ);
    FUNC7 (endf, socket_address_f);
    endg = FUNC10 (AF_SP, NN_REP);
    FUNC7 (endg, socket_address_g);

    /*  Wait for TCP to establish. */
    FUNC1 (100);

    /*  Pass a message between endpoints. */
    FUNC9 (endf, "XYZ");
    FUNC8 (endg, "XYZ");

    /*  Now send a reply. */
    FUNC9 (endg, "REPLYXYZ");
    FUNC8 (endf, "REPLYXYZ");

    /*  Clean up. */
    FUNC6 (endg);
    FUNC6 (endf);

    /*  Shut down the devices. */
    FUNC2 ();
    FUNC4 (&thread4);

    return 0;
}