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
struct nn_worker_fd {int /*<<< orphan*/  hndl; } ;
struct nn_worker {int /*<<< orphan*/  poller; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1 (struct nn_worker *self, struct nn_worker_fd *fd)
{
    FUNC0 (&self->poller, &fd->hndl);
}