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
 int /*<<< orphan*/  NN_PUB ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int THREAD_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_thread*) ; 
 int /*<<< orphan*/  routine ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5 ()
{
    int sb;
    int i;
    int j;
    struct nn_thread threads [THREAD_COUNT];

    /*  Stress the shutdown algorithm. */

    sb = FUNC4 (AF_SP, NN_PUB);
    FUNC2 (sb, SOCKET_ADDRESS);

    for (j = 0; j != 10; ++j) {
        for (i = 0; i != THREAD_COUNT; ++i)
            FUNC0 (&threads [i], routine, NULL);
        for (i = 0; i != THREAD_COUNT; ++i)
            FUNC1 (&threads [i]);
    }

    FUNC3 (sb);

    return 0;
}