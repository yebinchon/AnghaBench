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
typedef  int /*<<< orphan*/  nn_options_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EFSM ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  NN_MSG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int FUNC3 (int,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (nn_options_t *options, int sock)
{
    int rc;
    void *buf;

    for (;;) {
        rc = FUNC3 (sock, &buf, NN_MSG, 0);
        if (rc < 0 && errno == EAGAIN) {
            continue;
        } else if (rc < 0 && (errno == ETIMEDOUT || errno == EFSM)) {
            return;  /*  No more messages possible  */
        } else {
            FUNC0 (rc >= 0, "Can't recv");
        }
        FUNC2 (options, buf, rc);
        FUNC1 (buf);
    }
}