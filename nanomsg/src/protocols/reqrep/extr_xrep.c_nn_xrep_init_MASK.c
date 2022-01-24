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
struct nn_xrep {int /*<<< orphan*/  inpipes; int /*<<< orphan*/  outpipes; int /*<<< orphan*/  next_key; int /*<<< orphan*/  sockbase; } ;
struct nn_sockbase_vfptr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nn_sockbase_vfptr const*,void*) ; 

void FUNC4 (struct nn_xrep *self, const struct nn_sockbase_vfptr *vfptr,
    void *hint)
{
    FUNC3 (&self->sockbase, vfptr, hint);

    /*  Start assigning keys beginning with a random number. This way there
        are no key clashes even if the executable is re-started. */
    FUNC2 (&self->next_key, sizeof (self->next_key));

    FUNC1 (&self->outpipes);
    FUNC0 (&self->inpipes);
}