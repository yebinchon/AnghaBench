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

/* Variables and functions */
 int /*<<< orphan*/  AF_SP ; 
 scalar_t__ EMFILE ; 
 int MAX_SOCKETS ; 
 int /*<<< orphan*/  NN_PAIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4 ()
{
    int rc;
    int i;
    int socks [MAX_SOCKETS];

    /*  First, just create as much SP sockets as possible. */
    for (i = 0; i != MAX_SOCKETS; ++i) {
        socks [i] = FUNC3 (AF_SP, NN_PAIR);
        if (socks [i] < 0) {
            FUNC0 (FUNC2 () == EMFILE);
            break;
        }
    }
    while (1) {
        --i;
        if (i == -1)
            break;
        rc = FUNC1 (socks [i]);
        FUNC0 (rc == 0);
    }

    return 0;
}