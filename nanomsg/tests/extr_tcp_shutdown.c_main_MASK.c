#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nn_thread {int dummy; } ;
typedef  int /*<<< orphan*/  ms ;
struct TYPE_4__ {scalar_t__ n; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  NN_SNDTIMEO ; 
 int /*<<< orphan*/  NN_SOL_SOCKET ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int TEST2_THREAD_COUNT ; 
 int TEST_LOOPS ; 
 int THREAD_COUNT ; 
 TYPE_1__ active ; 
 int /*<<< orphan*/  FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nn_thread*,int /*<<< orphan*/ ,struct nn_thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct nn_thread*) ; 
 int /*<<< orphan*/  routine ; 
 int /*<<< orphan*/  routine2 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_address ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13 (int argc, const char *argv[])
{
    int sb;
    int i;
    int j;
    struct nn_thread threads [THREAD_COUNT];

    FUNC8(socket_address, "tcp", "127.0.0.1",
            FUNC0(argc, argv));

    /*  Stress the shutdown algorithm. */

#if defined(SIGPIPE) && defined(SIG_IGN)
    signal (SIGPIPE, SIG_IGN);
#endif

    sb = FUNC12 (AF_SP, NN_PUB);
    FUNC9 (sb, socket_address);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != THREAD_COUNT; ++i)
            FUNC5 (&threads [i], routine, NULL);
        for (i = 0; i != THREAD_COUNT; ++i) {
            FUNC6 (&threads [i]);
	}
    }

    FUNC10 (sb);

    /*  Test race condition of sending message while socket shutting down  */

    sb = FUNC12 (AF_SP, NN_PUSH);
    FUNC9 (sb, socket_address);

    for (j = 0; j != TEST_LOOPS; ++j) {
	int ms;
        FUNC1(&active, TEST2_THREAD_COUNT);
        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            FUNC5 (&threads [i], routine2, &threads[i]);

	FUNC4(100);
	ms = 200;
	FUNC11 (sb, NN_SOL_SOCKET, NN_SNDTIMEO, &ms, sizeof (ms));
        while (active.n) {
            (void) FUNC3 (sb, "hello", 5, 0);
        }

        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            FUNC6 (&threads [i]);
        FUNC2(&active);
    }

    FUNC10 (sb);

    return 0;
}