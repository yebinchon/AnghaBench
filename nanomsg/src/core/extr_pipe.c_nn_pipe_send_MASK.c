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
struct nn_pipebase {scalar_t__ outstate; TYPE_1__* vfptr; } ;
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct TYPE_2__ {int (* send ) (struct nn_pipebase*,struct nn_msg*) ;} ;

/* Variables and functions */
 scalar_t__ NN_PIPEBASE_OUTSTATE_ASYNC ; 
 scalar_t__ NN_PIPEBASE_OUTSTATE_IDLE ; 
 scalar_t__ NN_PIPEBASE_OUTSTATE_SENDING ; 
 scalar_t__ NN_PIPEBASE_OUTSTATE_SENT ; 
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
    FUNC1 (pipebase->outstate == NN_PIPEBASE_OUTSTATE_IDLE);
    pipebase->outstate = NN_PIPEBASE_OUTSTATE_SENDING;
    rc = pipebase->vfptr->send (pipebase, msg);
    FUNC0 (rc >= 0, -rc);
    if (FUNC2 (pipebase->outstate == NN_PIPEBASE_OUTSTATE_SENT)) {
        pipebase->outstate = NN_PIPEBASE_OUTSTATE_IDLE;
        return rc;
    }
    FUNC1 (pipebase->outstate == NN_PIPEBASE_OUTSTATE_SENDING);
    pipebase->outstate = NN_PIPEBASE_OUTSTATE_ASYNC;
    return rc | NN_PIPEBASE_RELEASE;
}