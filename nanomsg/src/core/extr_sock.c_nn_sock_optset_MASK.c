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
struct nn_transport {struct nn_optset* (* optset ) () ;} ;
struct nn_sock {struct nn_optset** optsets; } ;
struct nn_optset {int dummy; } ;

/* Variables and functions */
 int NN_MAX_TRANSPORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct nn_transport* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 struct nn_optset* FUNC3 () ; 

__attribute__((used)) static struct nn_optset *FUNC4 (struct nn_sock *self, int id)
{
    int index;
    const struct nn_transport *tp;

    /*  Transport IDs are negative and start from -1. */
    index = (-id) - 1;

    /*  Check for invalid indices. */
    if (FUNC2 (index < 0 || index >= NN_MAX_TRANSPORT))
        return NULL;

    /*  If the option set already exists return it. */
    if (FUNC0 (self->optsets [index] != NULL))
        return self->optsets [index];

    /*  If the option set doesn't exist yet, create it. */
    tp = FUNC1 (id);
    if (FUNC2 (!tp))
        return NULL;
    if (FUNC2 (!tp->optset))
        return NULL;
    self->optsets [index] = tp->optset ();

    return self->optsets [index];
}