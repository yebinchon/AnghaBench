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
struct nn_sockbase_vfptr {int dummy; } ;
struct nn_rep {scalar_t__ flags; int /*<<< orphan*/  xrep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nn_sockbase_vfptr const*,void*) ; 

void FUNC1 (struct nn_rep *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    FUNC0 (&self->xrep, vfptr, hint);
    self->flags = 0;
}