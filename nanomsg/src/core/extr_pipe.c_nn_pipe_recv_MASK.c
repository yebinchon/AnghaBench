#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nn_pipebase {scalar_t__ instate; TYPE_1__* vfptr; } ;
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct TYPE_2__ {int (* recv ) (struct nn_pipebase*,struct nn_msg*) ;} ;

/* Variables and functions */
 scalar_t__ NN_PIPEBASE_INSTATE_ASYNC ; 
 scalar_t__ NN_PIPEBASE_INSTATE_IDLE ; 
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVED ; 
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVING ; 
 int NN_PIPEBASE_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct nn_pipebase*,struct nn_msg*) ; 

int FUNC4 (struct nn_pipe *self, struct nn_msg *msg)
{
    int rc;
    struct nn_pipebase *pipebase;

    pipebase = (struct nn_pipebase*) self;
    FUNC1 (pipebase->instate == NN_PIPEBASE_INSTATE_IDLE);
    pipebase->instate = NN_PIPEBASE_INSTATE_RECEIVING;
    rc = pipebase->vfptr->recv (pipebase, msg);
    FUNC0 (rc >= 0, -rc);

    if (FUNC2 (pipebase->instate == NN_PIPEBASE_INSTATE_RECEIVED)) {
        pipebase->instate = NN_PIPEBASE_INSTATE_IDLE;
        return rc;
    }
    FUNC1 (pipebase->instate == NN_PIPEBASE_INSTATE_RECEIVING);
    pipebase->instate = NN_PIPEBASE_INSTATE_ASYNC;
    return rc | NN_PIPEBASE_RELEASE;
}