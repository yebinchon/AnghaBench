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
struct nn_sem {scalar_t__ signaled; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_sem *self)
{
    int rc;

    rc = FUNC2 (&self->mutex, NULL);
    FUNC0 (rc == 0, rc);
    rc = FUNC1 (&self->cond, NULL);
    FUNC0 (rc == 0, rc);
    self->signaled = 0;
}