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
struct nn_usock {int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_USOCK_ACTION_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_usock*,int) ; 

void FUNC3 (struct nn_usock *self, int fd)
{
    FUNC2 (self, fd);
    FUNC1 (&self->fsm);
    FUNC0 (&self->fsm, NN_USOCK_ACTION_STARTED);
}