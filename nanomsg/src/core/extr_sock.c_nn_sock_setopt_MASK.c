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
struct nn_sock {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nn_sock*,int,int,void const*,size_t) ; 

int FUNC3 (struct nn_sock *self, int level, int option,
    const void *optval, size_t optvallen)
{
    int rc;

    FUNC0 (&self->ctx);
    rc = FUNC2 (self, level, option, optval, optvallen);
    FUNC1 (&self->ctx);

    return rc;
}