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
 int /*<<< orphan*/  NN_DONTWAIT ; 
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  NN_PUSH ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int TEST2_THREAD_COUNT ; 
 int TEST_LOOPS ; 
 int THREAD_COUNT ; 
 int active ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*) ; 
 int /*<<< orphan*/  routine ; 
 int /*<<< orphan*/  routine2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8 ()
{

#ifndef NN_HAVE_WSL
    int sb;
    int i;
    int j;
    struct nn_thread threads [THREAD_COUNT];

    /*  Stress the shutdown algorithm. */

#if defined(SIGPIPE) && defined(SIG_IGN)
	signal (SIGPIPE, SIG_IGN);
#endif

    sb = FUNC7 (AF_SP, NN_PUB);
    FUNC5 (sb, SOCKET_ADDRESS);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != THREAD_COUNT; ++i)
            FUNC2 (&threads [i], routine, NULL);
        for (i = 0; i != THREAD_COUNT; ++i)
            FUNC3 (&threads [i]);
    }

    FUNC6 (sb);

    /*  Test race condition of sending message while socket shutting down  */

    sb = FUNC7 (AF_SP, NN_PUSH);
    FUNC5 (sb, SOCKET_ADDRESS);

    for (j = 0; j != TEST_LOOPS; ++j) {
        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            FUNC2 (&threads [i], routine2, NULL);
        active = TEST2_THREAD_COUNT;

        while (active) {
            (void) FUNC0 (sb, "hello", 5, NN_DONTWAIT);
            FUNC1 (0);
        }

        for (i = 0; i != TEST2_THREAD_COUNT; ++i)
            FUNC3 (&threads [i]);
    }

    FUNC6 (sb);
#endif /* NN_HAVE_WSL */

    return 0;
}