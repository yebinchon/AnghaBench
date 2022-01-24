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
 scalar_t__ ETERM ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nn_thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nn_thread*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  worker ; 

int FUNC10 ()
{
    int rc;
    int s;
    struct nn_thread thread;

    /*  Close the socket with no associated endpoints. */
    s = FUNC9 (AF_SP, NN_PAIR);
    FUNC8 (s);

    /*  Test nn_term() before nn_close(). */
    FUNC6 (&thread, worker, NULL);
    FUNC3 (100);
    FUNC5 ();

    /*  Check that it's not possible to create new sockets after nn_term(). */
    rc = FUNC4 (AF_SP, NN_PAIR);
    FUNC1 (rc == -1);
    FUNC0 (FUNC2 () == ETERM);

    /*  Wait till worker thread terminates. */
    FUNC7 (&thread);

    return 0;
}