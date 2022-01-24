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
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct nn_fq {int /*<<< orphan*/  priolist; } ;

/* Variables and functions */
 int EAGAIN ; 
 int NN_PIPE_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct nn_pipe*,struct nn_msg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct nn_pipe* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5 (struct nn_fq *self, struct nn_msg *msg, struct nn_pipe **pipe)
{
    int rc;
    struct nn_pipe *p;

    /*  Pipe is NULL only when there are no avialable pipes. */
    p = FUNC3 (&self->priolist);
    if (FUNC4 (!p))
        return -EAGAIN;

    /*  Receive the messsage. */
    rc = FUNC1 (p, msg);
    FUNC0 (rc >= 0, -rc);

    /*  Return the pipe data to the user, if required. */
    if (pipe)
        *pipe = p;

    /*  Move to the next pipe. */
    FUNC2 (&self->priolist, rc & NN_PIPE_RELEASE);

    return rc & ~NN_PIPE_RELEASE;
}