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
struct nn_excl {struct nn_pipe* outpipe; struct nn_pipe* pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1 (struct nn_excl *self, struct nn_pipe *pipe)
{
    FUNC0 (!self->outpipe);
    FUNC0 (pipe == self->pipe);
    self->outpipe = pipe;
}