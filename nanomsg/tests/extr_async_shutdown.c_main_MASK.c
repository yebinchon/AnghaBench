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
 int /*<<< orphan*/  NN_PULL ; 
 int TEST_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_thread*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nn_thread*) ; 
 int /*<<< orphan*/  routine ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8 (int argc, const char *argv[])
{
    int sb;
    int i;
    struct nn_thread thread;
    char socket_address[128];

    FUNC4(socket_address, "tcp", "127.0.0.1",
            FUNC0(argc, argv));

    for (i = 0; i != TEST_LOOPS; ++i) {
        sb = FUNC7 (AF_SP, NN_PULL);
        FUNC5 (sb, socket_address);
        FUNC1 (100);
        FUNC2 (&thread, routine, &sb);
        FUNC1 (100);
        FUNC6 (sb);
        FUNC3 (&thread);
    }

    return 0;
}