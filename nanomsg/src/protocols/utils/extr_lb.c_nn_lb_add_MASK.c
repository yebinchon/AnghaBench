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
struct nn_lb_data {int /*<<< orphan*/  priodata; } ;
struct nn_lb {int /*<<< orphan*/  priolist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct nn_pipe*,int) ; 

void FUNC1 (struct nn_lb *self, struct nn_lb_data *data,
    struct nn_pipe *pipe, int priority)
{
    FUNC0 (&self->priolist, &data->priodata, pipe, priority);
}