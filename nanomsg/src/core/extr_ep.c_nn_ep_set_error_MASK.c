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
struct nn_ep {int last_errno; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NN_STAT_CURRENT_EP_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nn_ep*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct nn_ep *self, int errnum)
{
    if (self->last_errno == errnum)
        /*  Error is still there, no need to report it again  */
        return;
    if (self->last_errno == 0)
        FUNC1 (self->sock, NN_STAT_CURRENT_EP_ERRORS, 1);
    self->last_errno = errnum;
    FUNC0 (self->sock, self, errnum);
}