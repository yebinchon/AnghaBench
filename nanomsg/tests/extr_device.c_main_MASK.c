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

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NN_BUS ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  NN_PULL ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_A ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_B ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_C ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_D ; 
 int /*<<< orphan*/  SOCKET_ADDRESS_E ; 
 int /*<<< orphan*/  device1 ; 
 int /*<<< orphan*/  device2 ; 
 int /*<<< orphan*/  device3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11 ()
{
    int enda;
    int endb;
    int endc;
    int endd;
    int ende1;
    int ende2;
    struct nn_thread thread1;
    struct nn_thread thread2;
    struct nn_thread thread3;
    int timeo;

    /*  Test the bi-directional device. */

    /*  Start the device. */
    FUNC2 (&thread1, device1, NULL);

    /*  Create two sockets to connect to the device. */
    enda = FUNC10 (AF_SP, NN_PAIR);
    FUNC5 (enda, SOCKET_ADDRESS_A);
    endb = FUNC10 (AF_SP, NN_PAIR);
    FUNC5 (endb, SOCKET_ADDRESS_B);

    /*  Pass a pair of messages between endpoints. */
    FUNC8 (enda, "ABC");
    FUNC7 (endb, "ABC");
    FUNC8 (endb, "ABC");
    FUNC7 (enda, "ABC");

    /*  Clean up. */
    FUNC4 (endb);
    FUNC4 (enda);

    /*  Test the uni-directional device. */

    /*  Start the device. */
    FUNC2 (&thread2, device2, NULL);

    /*  Create two sockets to connect to the device. */
    endc = FUNC10 (AF_SP, NN_PUSH);
    FUNC5 (endc, SOCKET_ADDRESS_C);
    endd = FUNC10 (AF_SP, NN_PULL);
    FUNC5 (endd, SOCKET_ADDRESS_D);

    /*  Pass a message between endpoints. */
    FUNC8 (endc, "XYZ");
    FUNC7 (endd, "XYZ");

    /*  Clean up. */
    FUNC4 (endd);
    FUNC4 (endc);

    /*  Test the loopback device. */

    /*  Start the device. */
    FUNC2 (&thread3, device3, NULL);

    /*  Create two sockets to connect to the device. */
    ende1 = FUNC10 (AF_SP, NN_BUS);
    FUNC5 (ende1, SOCKET_ADDRESS_E);
    ende2 = FUNC10 (AF_SP, NN_BUS);
    FUNC5 (ende2, SOCKET_ADDRESS_E);

    /*  BUS is unreliable so wait a bit for connections to be established. */
    FUNC0 (100);

    /*  Pass a message to the bus. */
    FUNC8 (ende1, "KLM");
    FUNC7 (ende2, "KLM");

    /*  Make sure that the message doesn't arrive at the socket it was
        originally sent to. */
    timeo = 100;
    FUNC9 (ende1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    FUNC6 (ende1, ETIMEDOUT);

    /*  Clean up. */
    FUNC4 (ende2);
    FUNC4 (ende1);

    /*  Shut down the devices. */
    FUNC1 ();
    FUNC3 (&thread1);
    FUNC3 (&thread2);
    FUNC3 (&thread3);

    return 0;
}