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
struct TYPE_2__ {int /*<<< orphan*/  sockbase; } ;
struct nn_surveyor {TYPE_1__ xsurveyor; int /*<<< orphan*/  tosend; } ;
struct nn_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nn_msg*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct nn_msg*) ; 

__attribute__((used)) static void FUNC3 (struct nn_surveyor *self)
{
    int rc;
    struct nn_msg msg;

    FUNC1 (&msg, &self->tosend);
    rc = FUNC2 (&self->xsurveyor.sockbase, &msg);
    FUNC0 (rc == 0, -rc);
}