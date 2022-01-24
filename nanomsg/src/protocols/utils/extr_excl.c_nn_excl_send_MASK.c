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
struct nn_msg {int dummy; } ;
struct nn_excl {int /*<<< orphan*/ * outpipe; } ;

/* Variables and functions */
 int EAGAIN ; 
 int NN_PIPE_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct nn_msg*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3 (struct nn_excl *self, struct nn_msg *msg)
{
    int rc;

    if (FUNC2 (!self->outpipe))
        return -EAGAIN;

    rc = FUNC1 (self->outpipe, msg);
    FUNC0 (rc >= 0, -rc);

    if (rc & NN_PIPE_RELEASE)
        self->outpipe = NULL;

    return rc & ~NN_PIPE_RELEASE;
}