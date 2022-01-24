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
typedef  int /*<<< orphan*/  sndtimeo ;
typedef  int /*<<< orphan*/  rcvtimeo ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  NN_RCVTIMEO ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  NN_SUB ; 
 int /*<<< orphan*/  NN_SUB_SUBSCRIBE ; 
 int TEST_LOOPS ; 
 int TEST_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_thread*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*) ; 
 int /*<<< orphan*/  routine ; 
 int /*<<< orphan*/  socket_address ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11 (int argc, const char *argv[])
{
    int i;
    int j;
    int s;
    int sb;
    int rcvtimeo = 10;
    int sndtimeo = 0;
    int sockets [TEST_THREADS];
    struct nn_thread threads [TEST_THREADS];

    FUNC4 (socket_address, "ws", "127.0.0.1",
        FUNC0 (argc, argv));

    for (i = 0; i != TEST_LOOPS; ++i) {

        sb = FUNC10 (AF_SP, NN_PUB);
        FUNC5 (sb, socket_address);
        FUNC9 (sb, NN_SOL_SOCKET, NN_SNDTIMEO,
            &sndtimeo, sizeof (sndtimeo));

        for (j = 0; j < TEST_THREADS; j++){
            s = FUNC10 (AF_SP, NN_SUB);
            FUNC9 (s, NN_SOL_SOCKET, NN_RCVTIMEO,
                &rcvtimeo, sizeof (rcvtimeo));
            FUNC9 (s, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
            FUNC7 (s, socket_address);
            sockets [j] = s;
            FUNC2 (&threads [j], routine, &sockets [j]);
        }

        /*  Allow all threads a bit of time to connect. */
        FUNC1 (100);

        FUNC8 (sb, "");

        for (j = 0; j < TEST_THREADS; j++) {
            FUNC6 (sockets [j]);
            FUNC3 (&threads [j]);
        }

        FUNC6 (sb);
    }

    return 0;
}