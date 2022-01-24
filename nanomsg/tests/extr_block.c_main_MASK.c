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
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  SOCKET_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_thread*) ; 
 int /*<<< orphan*/  sb ; 
 int /*<<< orphan*/  sc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker ; 

int FUNC7 ()
{
    struct nn_thread thread;

    sb = FUNC6 (AF_SP, NN_PAIR);
    FUNC2 (sb, SOCKET_ADDRESS);
    sc = FUNC6 (AF_SP, NN_PAIR);
    FUNC4 (sc, SOCKET_ADDRESS);

    FUNC0 (&thread, worker, NULL);

    FUNC5 (sb, "ABC");
    FUNC5 (sb, "ABC");

    FUNC1 (&thread);

    FUNC3 (sc);
    FUNC3 (sb);

    return 0;
}