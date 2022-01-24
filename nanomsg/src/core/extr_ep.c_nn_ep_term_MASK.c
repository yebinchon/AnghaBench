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
struct TYPE_2__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;
struct nn_ep {int /*<<< orphan*/  fsm; int /*<<< orphan*/  item; int /*<<< orphan*/  tran; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_EP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (struct nn_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 (struct nn_ep *self)
{
    FUNC0 (self, NN_EP_STATE_IDLE);

    self->ops.destroy (self->tran);
    FUNC2 (&self->item);
    FUNC1 (&self->fsm);
}